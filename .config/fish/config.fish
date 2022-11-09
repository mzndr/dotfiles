if status is-interactive
  if not pgrep -f xinit > /dev/null
    command xinit
  end
end

source ./zoxide.fish
