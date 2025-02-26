function fish_greeting
  if test (random 0 6) -eq 0
    set level (random 1 100)
    krabby random 1-2 --no-variant | read -L name

    set name_lower (string lower $name)
    set name_upper (string upper $name)

    echo "A wild $name_upper (lv.$level) appeared!"

    krabby name $name_lower --no-title 
  end
end
