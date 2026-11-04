-- Follow the macOS system appearance (light/dark).
--
-- The initial value is applied from lua/config/options.lua, before the
-- colorscheme loads. `setup()` then keeps it in sync while Neovim is running.
local M = {}

---@return "light"|"dark"|nil
function M.system_background()
  if vim.fn.has("mac") ~= 1 then
    return nil
  end

  -- `defaults read` exits with an error when the key is missing, which means
  -- the system is in light mode.
  local out = vim.fn.system({ "defaults", "read", "-g", "AppleInterfaceStyle" })
  if vim.v.shell_error == 0 and out:lower():find("dark", 1, true) then
    return "dark"
  end
  return "light"
end

---Apply the current system appearance to Neovim.
function M.apply()
  local background = M.system_background()
  if not background or vim.o.background == background then
    return
  end

  -- onedark.nvim has to switch its style *before* 'background' changes, since
  -- Neovim reloads the colorscheme right after that.
  if vim.g.colors_name == "onedark" and vim.g.onedark_config then
    require("onedark").setup({ style = background == "light" and "light" or "dark" })
  end

  vim.o.background = background
end

---Keep Neovim's background in sync with the system appearance.
function M.setup()
  M.apply()

  if vim.fn.has("mac") ~= 1 then
    return
  end

  local group = vim.api.nvim_create_augroup("user_system_theme", { clear = true })

  -- Fallback for when the file watcher misses a change (for example after
  -- Sleep/wake or when the preference file is replaced).
  vim.api.nvim_create_autocmd({ "FocusGained", "VimResume" }, {
    group = group,
    callback = M.apply,
  })

  -- macOS persists the appearance in this plist. Watching it gives us live
  -- updates without polling.
  local plist = vim.fs.joinpath(vim.env.HOME or "", "Library/Preferences/.GlobalPreferences.plist")
  if not vim.uv.fs_stat(plist) then
    return
  end

  local timer = vim.uv.new_timer()
  M._timer = timer

  local function watch()
    local event = vim.uv.new_fs_event()
    M._event = event
    event:start(plist, {}, function(err, _, events)
      if err then
        return
      end
      -- A single appearance change can emit several events, so debounce.
      timer:stop()
      timer:start(
        200,
        0,
        vim.schedule_wrap(function()
          -- The plist may have been replaced atomically; re-watch it then.
          if events and events.rename then
            event:stop()
            watch()
          end
          M.apply()
        end)
      )
    end)
  end

  watch()
end

return M
