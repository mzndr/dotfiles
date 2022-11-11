local awful = require("awful")

autorunApps = 
{ 
  'picom --experimental-backends',
}
for app = 1, #autorunApps do
  awful.util.spawn(autorunApps[app])
end
