local awful = require("awful")
local gears = require("gears")
local hotkeys_popup = require("awful.hotkeys_popup")
local naughty = require("naughty")

-- {{{ Mouse bindings
root.buttons(gears.table.join(
  awful.button({}, 3, function()
    MY_MAIN_MENU:toggle()
  end),
  awful.button({}, 4, awful.tag.viewnext),
  awful.button({}, 5, awful.tag.viewprev)
))
-- }}}

-- {{{ Key bindings
GLOBAL_KEYS = gears.table.join(
  awful.key({ MODKEY }, "b", function()
    local s = awful.screen.focused()
    s.mywibox.visible = not s.mywibox.visible
  end, { description = "toggle bar", group = "wibox" }),
  awful.key({ MODKEY }, "s", hotkeys_popup.show_help, { description = "show help", group = "awesome" }),
  awful.key({ MODKEY }, "Left", awful.tag.viewprev, { description = "view previous", group = "tag" }),
  awful.key({ MODKEY }, "Right", awful.tag.viewnext, { description = "view next", group = "tag" }),
  awful.key({ MODKEY }, "Escape", awful.tag.history.restore, { description = "go back", group = "tag" }),
  awful.key({ MODKEY }, "j", function()
    awful.client.focus.byidx(1)
  end, { description = "focus next by index", group = "client" }),
  awful.key({ MODKEY }, "k", function()
    awful.client.focus.byidx(-1)
  end, { description = "focus previous by index", group = "client" }),
  awful.key({ MODKEY }, "w", function()
    MY_MAIN_MENU:show()
  end, { description = "show main menu", group = "awesome" }),
  awful.key({ MODKEY, 'Control' }, 't', awful.titlebar.toggle,
    { description = 'toggle title bar', group = 'client' }),

  -- Layout manipulation
  awful.key({ MODKEY, "Shift" }, "j", function()
    awful.client.swap.byidx(1)
  end, { description = "swap with next client by index", group = "client" }),
  awful.key({ MODKEY, "Shift" }, "k", function()
    awful.client.swap.byidx(-1)
  end, { description = "swap with previous client by index", group = "client" }),
  awful.key({ MODKEY, "Control" }, "j", function()
    awful.screen.focus_relative(1)
  end, { description = "focus the next screen", group = "screen" }),
  awful.key({ MODKEY, "Control" }, "k", function()
    awful.screen.focus_relative(-1)
  end, { description = "focus the previous screen", group = "screen" }),
  awful.key({ MODKEY }, "u", awful.client.urgent.jumpto, { description = "jump to urgent client", group = "client" }),
  awful.key({ MODKEY }, "Tab", function()
    awful.client.focus.history.previous()
    if client.focus then
      client.focus:raise()
    end
  end, { description = "go back", group = "client" }),

  -- Standard program
  awful.key({ MODKEY }, "Return", function()
    awful.spawn(TERMINAL)
  end, { description = "open a terminal", group = "launcher" }),
  awful.key({ MODKEY, "Control" }, "r", awesome.restart, { description = "reload awesome", group = "awesome" }),
  awful.key({ MODKEY, "Shift" }, "q", awesome.quit, { description = "quit awesome", group = "awesome" }),
  awful.key({ MODKEY }, "l", function()
    awful.tag.incmwfact(0.05)
  end, { description = "increase master width factor", group = "layout" }),
  awful.key({ MODKEY }, "h", function()
    awful.tag.incmwfact(-0.05)
  end, { description = "decrease master width factor", group = "layout" }),
  awful.key({ MODKEY, "Shift" }, "h", function()
    awful.tag.incnmaster(1, nil, true)
  end, { description = "increase the number of master clients", group = "layout" }),
  awful.key({ MODKEY, "Shift" }, "l", function()
    awful.tag.incnmaster(-1, nil, true)
  end, { description = "decrease the number of master clients", group = "layout" }),
  awful.key({ MODKEY, "Control" }, "h", function()
    awful.tag.incncol(1, nil, true)
  end, { description = "increase the number of columns", group = "layout" }),
  awful.key({ MODKEY, "Control" }, "l", function()
    awful.tag.incncol(-1, nil, true)
  end, { description = "decrease the number of columns", group = "layout" }),
  awful.key({ MODKEY }, "space", function()
    awful.layout.inc(1)
  end, { description = "select next", group = "layout" }),
  awful.key({ MODKEY, "Shift" }, "space", function()
    awful.layout.inc(-1)
  end, { description = "select previous", group = "layout" }),

  awful.key({ MODKEY, "Control" }, "n", function()
    local c = awful.client.restore()
    -- Focus restored client
    if c then
      c:emit_signal("request::activate", "key.unminimize", { raise = true })
    end
  end, { description = "restore minimized", group = "client" }),

  -- Prompt
  awful.key({ MODKEY }, "r", function()
    awful.util.spawn("dmenu_run")
  end, { description = "run prompt", group = "launcher" }),

  awful.key({ MODKEY }, "x", function()
    awful.prompt.run({
      prompt = "Run Lua code: ",
      textbox = awful.screen.focused().mypromptbox.widget,
      exe_callback = awful.util.eval,
      history_path = awful.util.get_cache_dir() .. "/history_eval",
    })
  end, { description = "lua execute prompt", group = "awesome" }),
  -- Menubar
  awful.key({ MODKEY }, "p", function()
    menubar.show()
  end, { description = "show the menubar", group = "launcher" })
)

CLIENT_KEYS = gears.table.join(
  awful.key({ MODKEY, }, "f",
    function(c)
      c.fullscreen = not c.fullscreen
    end,
    { description = "toggle fullscreen", group = "client" }),
  awful.key({ MODKEY, "Shift" }, "c", function(c) c:kill() end,
    { description = "close", group = "client" }),
  awful.key({ MODKEY, }, "b", function(c)
      local s = awful.screen.focused()
      s.mywibox.visible = not s.mywibox.visible
    end,
    { description = "close", group = "client" }),
  awful.key({ MODKEY, "Control" }, "space", awful.client.floating.toggle,
    { description = "toggle floating", group = "client" }),
  awful.key({ MODKEY, "Control" }, "Return", function(c) c:swap(awful.client.getmaster()) end,
    { description = "move to master", group = "client" }),
  awful.key({ MODKEY, }, "o", function(c) c:move_to_screen() end,
    { description = "move to screen", group = "client" }),
  awful.key({ MODKEY, }, "t", function(c) c.ontop = not c.ontop end,
    { description = "toggle keep on top", group = "client" }),
  awful.key({ MODKEY, }, "n",
    function(c)
      -- The client currently has the input focus, so it cannot be
      -- minimized, since minimized clients can't have the focus.
      c.minimized = true
    end,
    { description = "minimize", group = "client" }),
  awful.key({ MODKEY, }, "m",
    function(c)
      c.maximized = not c.maximized
      c:raise()
    end,
    { description = "(un)maximize", group = "client" }),
  awful.key({ MODKEY, "Control" }, "m",
    function(c)
      c.maximized_vertical = not c.maximized_vertical
      c:raise()
    end,
    { description = "(un)maximize vertically", group = "client" }),
  awful.key({ MODKEY, "Shift" }, "m",
    function(c)
      c.maximized_horizontal = not c.maximized_horizontal
      c:raise()
    end,
    { description = "(un)maximize horizontally", group = "client" })
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
  GLOBAL_KEYS = gears.table.join(
    GLOBAL_KEYS,
    -- View tag only.
    awful.key({ MODKEY }, "#" .. i + 9, function()
      local screen = awful.screen.focused()
      local tag = screen.tags[i]
      if tag then
        tag:view_only()
      end
    end, { description = "view tag #" .. i, group = "tag" }),
    -- Toggle tag display.
    awful.key({ MODKEY, "Control" }, "#" .. i + 9, function()
      local screen = awful.screen.focused()
      local tag = screen.tags[i]
      if tag then
        awful.tag.viewtoggle(tag)
      end
    end, { description = "toggle tag #" .. i, group = "tag" }),
    -- Move client to tag.
    awful.key({ MODKEY, "Shift" }, "#" .. i + 9, function()
      if client.focus then
        local tag = client.focus.screen.tags[i]
        if tag then
          client.focus:move_to_tag(tag)
        end
      end
    end, { description = "move focused client to tag #" .. i, group = "tag" }),
    -- Toggle tag on focused client.
    awful.key({ MODKEY, "Control", "Shift" }, "#" .. i + 9, function()
      if client.focus then
        local tag = client.focus.screen.tags[i]
        if tag then
          client.focus:toggle_tag(tag)
        end
      end
    end, { description = "toggle focused client on tag #" .. i, group = "tag" })
  )
end

clientbuttons = gears.table.join(
  awful.button({}, 1, function(c)
    c:emit_signal("request::activate", "mouse_click", { raise = true })
  end),
  awful.button({ MODKEY }, 1, function(c)
    c:emit_signal("request::activate", "mouse_click", { raise = true })
    awful.mouse.client.move(c)
  end),
  awful.button({ MODKEY }, 3, function(c)
    c:emit_signal("request::activate", "mouse_click", { raise = true })
    awful.mouse.client.resize(c)
  end)
)

-- Set keys
root.keys(GLOBAL_KEYS)
-- }}}defadefa

awful.key({ MODKEY, "Shift" }, "z", function()
  local notif_icon = gears.surface.load_uncached(
    gears.filesystem.get_configuration_dir() .. "path/to/icon")
  naughty.notify({
    screen = 1,
    timeout = 0,           -- in seconds
    ignore_suspend = true, -- if true notif shows even if notifs are suspended via naughty.suspend
    fg = "#ff0",
    bg = "#ff0000",
    title = "Test Title",
    text = "Test Notification",
    icon = gears.color.recolor_image(notif_icon, "#ff0"),
    icon_size = 24, -- in px
    border_color = "#ffff00",
    border_width = 2,
  })
end)
