if not set -q DISPLAY 
  startx
end

set -x LC_ALL en_US.UTF-8
set -x LC_CTYPE en_US.UTF-8
fish_vi_key_bindings

direnv hook fish | source

