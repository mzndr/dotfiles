if not set -q DISPLAY 
  startx
end

fish_add_path ~/go/bin

fish_vi_key_bindings

direnv hook fish | source

set -q KREW_ROOT; and set -gx PATH $PATH $KREW_ROOT/.krew/bin; or set -gx PATH $PATH $HOME/.krew/bin
