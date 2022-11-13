if status is-interactive
  if not pgrep -f xinit > /dev/null
    command xinit
  end
end

source $HOME/.config/fish/zoxide.fish
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/scripts:$PATH"

export EDITOR=nvim

abbr -a ls  "exa"
abbr -a ll  "exa -la --git"
abbr -a cat "bat"
abbr -a q   "exit"

fish_vi_key_bindings
