local awful = require("awful")

AUTORUN_APPS = {
	"picom",
}
for app = 1, #AUTORUN_APPS do
	awful.util.spawn(AUTORUN_APPS[app])
end
