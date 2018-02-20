/*
 Copyright 2011 (C) Raster Software Vigo (Sergio Costas)

 This file is part of Cronopete

 Nanockup is free software; you can redistribute it and/or modify
 it under the terms of the GNU General Public License as published by
 the Free Software Foundation; either version 3 of the License, or
 (at your option) any later version.

 Nanockup is distributed in the hope that it will be useful,
 but WITHOUT ANY WARRANTY; without even the implied warranty of
 MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 GNU General Public License for more details.

 You should have received a copy of the GNU General Public License
 along with this program.  If not, see <http://www.gnu.org/licenses/>. */

using GLib;
using Gtk;

public class fixed_label : Gtk.Label {

    private int _maxwidth;

    public fixed_label(string text, int width) {
        this.label = text;
        this._maxwidth = width;
    }

    public override void get_preferred_width(out int min_width, out int pref_width) {

        min_width = this._maxwidth;
        pref_width = this._maxwidth;
    }
}
