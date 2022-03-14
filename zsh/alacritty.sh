if [ ! -d "${HOME}/.config/alacritty-shell" ]; then
  git clone https://github.com/casonadams/alacritty-shell.git ~/.config/alacritty-shell
fi

ALACRITTY_SHELL="${HOME}/.config/alacritty-shell"
[ -n "$PS1" ] \
  && [ -s "${ALACRITTY_SHELL}/profile_helper.sh" ] \
  && eval "$("${ALACRITTY_SHELL}/profile_helper.sh")"
