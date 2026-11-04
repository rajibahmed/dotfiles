-- Every spec file under the "plugins" directory is loaded automatically by lazy.nvim.
-- In your plugin files you can:
-- * add extra plugins
-- * disable/enable LazyVim plugins
-- * override the configuration of LazyVim plugins
return {
  -- NOTE: LazyVim v14+ uses blink.cmp instead of nvim-cmp.
  -- The old nvim-cmp / cmp-emoji specs were removed because they installed a
  -- second completion engine alongside blink.cmp.

  -- add pyright to lspconfig
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type table<string, lazyvim.lsp.Config|boolean>
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        -- Angular Language Service: not needed for this plain TypeScript repo.
        -- Disabling it also stops mason-lspconfig from auto-enabling the
        -- installed angular-language-server package.
        angularls = { enabled = false },
        -- oxfmt is a formatter, not an LSP we use. The Mason package is broken on
        -- this machine (missing @oxfmt/binding-darwin-arm64) and mason-lspconfig
        -- auto-enables every installed server, so it crashes on every startup.
        -- Formatting is handled by conform + prettier instead.
        oxfmt = { enabled = false },
      },
    },
  },

  -- add more treesitter parsers. LazyVim marks `ensure_installed` with
  -- `opts_extend`, so this list is added to the defaults instead of replacing them.
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "bash",
        "html",
        "javascript",
        "json",
        "lua",
        "markdown",
        "markdown_inline",
        "python",
        "query",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  -- the opts function can also be used to change the default opts:
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function(_, opts)
      table.insert(opts.sections.lualine_x, {
        function()
          return "😄"
        end,
      })
    end,
  },

  {
    "nickjvandyke/opencode.nvim",
    version = "*", -- Latest stable release
    dependencies = {
      {
        -- `snacks.nvim` integration is recommended, but optional
        ---@module "snacks" <- Loads `snacks.nvim` types for configuration intellisense
        "folke/snacks.nvim",
        optional = true,
        opts = {
          input = {}, -- Enhances `ask()`
          picker = { -- Enhances `select()`
            actions = {
              opencode_send = function(...)
                return require("opencode").snacks_picker_send(...)
              end,
            },
            win = {
              input = {
                keys = {
                  ["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
                },
              },
            },
          },
        },
      },
    },
    config = function()
      ---@type opencode.Opts
      vim.g.opencode_opts = {
        -- Your configuration, if any; goto definition on the type or field for details
      }

      vim.o.autoread = true -- Required for `opts.events.reload`

      -- OpenCode lives under <leader>a so native <C-a>/<C-x>/go stay free.
      vim.keymap.set({ "n", "x" }, "<leader>a", "", { desc = "+ai" })

      vim.keymap.set({ "n", "x" }, "<leader>aa", function()
        require("opencode").ask("@this: ")
      end, { desc = "Ask OpenCode" })

      vim.keymap.set({ "n", "x" }, "<leader>ax", function()
        require("opencode").select()
      end, { desc = "OpenCode menu" })

      vim.keymap.set({ "n", "t" }, "<leader>at", function()
        require("opencode").toggle()
      end, { desc = "Toggle OpenCode" })

      vim.keymap.set({ "n", "x" }, "<leader>ar", function()
        return require("opencode").operator("@this ")
      end, { desc = "Append range to OpenCode", expr = true })

      vim.keymap.set("n", "<leader>al", function()
        return require("opencode").operator("@this ") .. "_"
      end, { desc = "Append line to OpenCode", expr = true })

      vim.keymap.set("n", "<leader>as", function()
        require("opencode").command("prompt.submit")
      end, { desc = "Submit OpenCode prompt" })

      vim.keymap.set("n", "<S-C-u>", function()
        require("opencode").command("session.half.page.up")
      end, { desc = "Scroll OpenCode up" })
      vim.keymap.set("n", "<S-C-d>", function()
        require("opencode").command("session.half.page.down")
      end, { desc = "Scroll OpenCode down" })
    end,
  },
}
