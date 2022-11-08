if status is-interactive
    # Commands to run in interactive sessions can go here
    xinit
end

if [ -z "{DISPLAY}" ] and [ "{XDG_VTNR}" -eq 1 ]; then
  exec startx
end
