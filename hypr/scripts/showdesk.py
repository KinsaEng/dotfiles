#!/usr/bin/env python3

import gi
gi.require_version("Gtk", "3.0")
from gi.repository import Gtk, Gdk

class BlankWindow(Gtk.Window):
    def __init__(self):
        super().__init__()
        self.set_decorated(False)
        self.fullscreen()
        self.set_keep_above(True)

        screen = self.get_screen()
        visual = screen.get_rgba_visual()
        if visual and screen.is_composited():
            self.set_visual(visual)

        self.set_app_paintable(True)
        self.connect("draw", self.draw)

    def draw(self, widget, cr):
        cr.set_source_rgba(0, 0, 0, 0)  # tam şeffaf
        cr.set_operator(3)  # clear
        cr.paint()
        return False

win = BlankWindow()
win.show_all()
Gtk.main()
