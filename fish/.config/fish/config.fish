source $HOME/.config/fish/kanagawa.fish
source $HOME/.config/fish/zoxide.fish

set -x PATH "$HOME/.cargo/bin:$PATH"
set -x PATH "$HOME/scripts:$PATH"
set -x PATH "$(yarn global bin):$PATH"
set -x GLUSR mzndr
set -x GLPAT (cat "$HOME/glpat.token")

export EDITOR=nvim

source $HOME/.config/fish/abbrs.fish

fish_vi_key_bindings

fnm env | source
fnm completions --shell fish | source
