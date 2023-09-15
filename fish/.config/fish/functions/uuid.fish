#!/usr/bin/fish

function uuid --description 'Generate UUIDs'
  set _flag_n 1

  argparse -i -x s,S 'n#number' 's/string' 'S/singlequote' 'c/csv' 'a/array' -- $argv

  if set -q _flag_a
    echo [
  end

  for i in (seq 1 "$_flag_n")
    set uid (/bin/cat /proc/sys/kernel/random/uuid)
    set print $uid
    
    if set -q _flag_s
      set print \"$uid\"
    else if set -q _flag_S
      set print \'$uid\'
    end

    if set -q _flag_c; or set -q _flag_a
      set print $print,
    end

    if set -q _flag_a
      set print \t$print
    end

    echo $print
  end

  if set -q _flag_a
    echo ]
  end
end
