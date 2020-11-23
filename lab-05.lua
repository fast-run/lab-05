#!/usr/bin/lua5.3

lgi = require 'lgi'

gtk = lgi.Gtk
gtk.init()

bld = gtk.Builder()
bld:add_from_file('lab-05.glade')

ui = bld.objects

function ui.open_btn:on_clicked(...)
	ui.wnd2:show_all()
end

function ui.close_btn:on_clicked(...)
	ui.wnd2:hide()
end

ui.wnd.on_destroy = gtk.main_quit
ui.wnd:show_all()

gtk.main()
