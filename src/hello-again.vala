/*
* Copyright (c) 2011-2017 marcelognunez (http://www.rhonics.com)
* compile with: valac --pkg gtk+-3.0 gtk-hello.vala
*
* This program is free software; you can redistribute it and/or
* modify it under the terms of the GNU General Public
* License as published by the Free Software Foundation; either
* version 2 of the License, or (at your option) any later version.
*
* This program is distributed in the hope that it will be useful,
* but WITHOUT ANY WARRANTY; without even the implied warranty of
* MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
* General Public License for more details.
*
* You should have received a copy of the GNU General Public
* License along with this program; if not, write to the
* Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
* Boston, MA 02110-1301 USA
*
* Authored by: Marcelo G. Nuñez <marcelognunez@gmail.com>
*/

using Gtk;

int main (string[] args) {
    Gtk.init (ref args);
    var window = new Gtk.Window();
    window.title = _("Hello World!");
    window.set_border_width(12);
    window.set_position(Gtk.WindowPosition.CENTER);
    window.set_default_size(350, 70);
    window.destroy.connect(Gtk.main_quit);
    
    try {
        // Either directly from a file ...
        //window.icon = new Gdk.Pixbuf.from_file ("my-app.png");
        // ... or from the theme
        window.icon = IconTheme.get_default().load_icon("folder-ufo", 48, 0);
    } catch (Error e) {
        stderr.printf (_("Could not load application icon: %s\n"), e.message);
    }
    
    /*
        var button_hello = new Gtk.Button.with_label ("Click me!");
        button_hello.clicked.connect (() => {
            button_hello.label = "Clicked!";
            button_hello.set_sensitive (false);
        });

        window.add(button_hello);
    */
    
    var label = new Gtk.Label(_("Hello Again World!"));

    window.add(label);
    window.show_all();

    Gtk.main ();
    return 0;
}








