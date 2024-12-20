---------------------------
-- Marius awesome theme --
---------------------------

local theme_assets = require("beautiful.theme_assets")
local xresources = require("beautiful.xresources")
local beautiful = require("beautiful")
local naughty = require("naughty")

local dpi = xresources.apply_dpi
local themes_path = "~/.config/awesome/themes/"
local bg_image = "~/wallpapers/waneella/city_night.png"

local theme = {}

theme.font = "sans 13"

theme.bg_normal = "#3F3F58"
theme.bg_focus = "#535d6c"
theme.bg_urgent = "#ff0000"
theme.bg_minimize = "#444444"
theme.bg_systray = theme.bg_normal

theme.fg_normal = "#DCD7BA"
theme.fg_focus = "#ffffff"
theme.fg_urgent = "#ffffff"
theme.fg_minimize = "#ffffff"

theme.useless_gap = dpi(3)
theme.border_width = dpi(4)
theme.border_normal = "#303050"
theme.border_focus = "#5F5F88"
theme.border_marked = "#91231c"

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- taglist_[bg|fg]_[focus|urgent|occupied|empty|volatile]
-- tasklist_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- prompt_[fg|bg|fg_cursor|bg_cursor|font]
-- hotkeys_[bg|fg|border_width|border_color|shape|opacity|modifiers_fg|label_bg|label_fg|group_margin|font|description_font]
theme.hotkeys_modifiers_fg = "#c9c9c9"
theme.hotkeys_font = theme.font
theme.hotkeys_description_font = theme.font
theme.hotkeys_group_margin = dpi(4)
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Generate taglist squares:
local taglist_square_size = dpi(4)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(taglist_square_size, theme.fg_normal)
theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(taglist_square_size, theme.fg_normal)

-- Variables set for theming notifications:
-- notification_font
-- notification_[bg|fg]
-- notification_[width|height|margin]
-- notification_[border_color|border_width|shape|opacity]
beautiful.notification_border_width = dpi(3)

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = themes_path .. "my-theme/submenu.png"
theme.menu_height = dpi(20)
theme.menu_width = dpi(100)

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = themes_path .. "my-theme/titlebar/close_normal.png"
theme.titlebar_close_button_focus = themes_path .. "my-theme/titlebar/close_focus.png"

theme.titlebar_minimize_button_normal = themes_path .. "my-theme/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus = themes_path .. "my-theme/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_normal_inactive = themes_path .. "my-theme/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = themes_path .. "my-theme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = themes_path .. "my-theme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = themes_path .. "my-theme/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = themes_path .. "my-theme/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = themes_path .. "my-theme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = themes_path .. "my-theme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = themes_path .. "my-theme/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = themes_path .. "my-theme/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = themes_path .. "my-theme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = themes_path .. "my-theme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = themes_path .. "my-theme/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = themes_path .. "my-theme/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = themes_path .. "my-theme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = themes_path .. "my-theme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = themes_path .. "my-theme/titlebar/maximized_focus_active.png"

theme.wallpaper = bg_image

-- You can use your own layout icons like this:
theme.layout_fairh = themes_path .. "my-theme/layouts/fairhw.png"
theme.layout_fairv = themes_path .. "my-theme/layouts/fairvw.png"
theme.layout_floating = themes_path .. "my-theme/layouts/floatingw.png"
theme.layout_magnifier = themes_path .. "my-theme/layouts/magnifierw.png"
theme.layout_max = themes_path .. "my-theme/layouts/maxw.png"
theme.layout_fullscreen = themes_path .. "my-theme/layouts/fullscreenw.png"
theme.layout_tilebottom = themes_path .. "my-theme/layouts/tilebottomw.png"
theme.layout_tileleft = themes_path .. "my-theme/layouts/tileleftw.png"
theme.layout_tile = themes_path .. "my-theme/layouts/tilew.png"
theme.layout_tiletop = themes_path .. "my-theme/layouts/tiletopw.png"
theme.layout_spiral = themes_path .. "my-theme/layouts/spiralw.png"
theme.layout_dwindle = themes_path .. "my-theme/layouts/dwindlew.png"
theme.layout_cornernw = themes_path .. "my-theme/layouts/cornernww.png"
theme.layout_cornerne = themes_path .. "my-theme/layouts/cornernew.png"
theme.layout_cornersw = themes_path .. "my-theme/layouts/cornersww.png"
theme.layout_cornerse = themes_path .. "my-theme/layouts/cornersew.png"

-- Generate Awesome icon:
theme.awesome_icon = theme_assets.awesome_icon(theme.menu_height, theme.bg_focus, theme.fg_focus)

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = nil

return theme
