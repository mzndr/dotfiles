source $HOME/.config/fish/kanagawa.fish
source $HOME/.config/fish/zoxide.fish
source $HOME/.config/fish/envs.fish

set -x PATH "$HOME/.cargo/bin:$PATH"
set -x PATH "$HOME/scripts:$PATH"
set -x PATH "$(yarn global bin):$PATH"

export EDITOR=nvim

source $HOME/.config/fish/abbrs.fish

fish_vi_key_bindings

fnm env | source
fnm completions --shell fish | source
