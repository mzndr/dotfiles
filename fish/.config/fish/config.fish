if status is-interactive
  if not pgrep -f xinit > /dev/null
    command startx
  end
end

source $HOME/.config/fish/zoxide.fish

set -x PATH "$HOME/.cargo/bin:$PATH"
set -x PATH "$HOME/scripts:$PATH"
set -x GLUSR mzndr
set -x GLPAT (cat "$HOME/glpat.token")

export EDITOR=nvim

abbr -a ls  "exa"
abbr -a ll  "exa -la --git"
abbr -a cat "bat"
abbr -a q   "exit"
abbr -a dcup "docker compose up -d && docker compose logs -f"

fish_vi_key_bindings

fnm env | source
fnm completions --shell fish | source
