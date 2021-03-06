# Copyright 2014, Trimble Navigation Limited

# This software is provided as an example of using the Ruby interface
# to SketchUp.

# Permission to use, copy, modify, and distribute this software for 
# any purpose and without fee is hereby granted, provided that the above
# copyright notice appear in all copies.

# THIS SOFTWARE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR
# IMPLIED WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED
# WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE.
#
# Initializer for Advanced Camera Tools Extension.

require 'sketchup.rb'
require 'extensions.rb'
require 'langhandler.rb'

# Put translation object where the extension can find it.
$fs_strings = LanguageHandler.new("advancedcameratools.strings")

# Load the extension.
extension_name = $fs_strings.GetString("Advanced Camera Tools")

if not Sketchup.is_pro?
  extension_name += " " + $fs_strings.GetString("(Pro Only)")
end
fs_extension = SketchupExtension.new(
    extension_name, "su_advancedcameratools/actloader.rb")


fs_extension.description = $fs_strings.GetString("Use the Advanced Camera " +
    "Tools to place real-world cameras in your models. Choose from a long " +
    "list of film, video, digital and still cameras. Accurately preview " +
    "aspect ratio, focal length, safe zones and other camera properties. You " +
    "can find the Advanced Camera Tools in the Tools menu, as well as in " +
    "the dedicated toolbar (View > Toolbars > Advanced Camera Tools).")
fs_extension.version = "1.3.0"
fs_extension.creator = "SketchUp"
fs_extension.copyright = "2015, Trimble Navigation Limited"

# Register the extension with Sketchup.
Sketchup.register_extension fs_extension, true
