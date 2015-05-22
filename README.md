base16-256colors Terminal.app fix
=================================

Simple SIMBL plugin that switches Terminal.app colors around to allow the use of
the 256 colors variation of the base16 palettes.

Why and how
-----------

base16 offers a 256 colors variant of its schemes. To do so it stores some of
the colors in the range 16-21 of the terminal palette.
Unfortunately Terminal.app doesn't allow modifying these colors, so to overcame
this limit I just switch around the colors when the terminal tries to access the
palette (since the 16 colors are all the same).
Just install the 16-colors palette and it'll behave like the 256 one in iTerm.

Download
--------

An already compiled bundle is available:

[https://github.com/cHoco/base16-256colors-TerminalFix/releases]
(https://github.com/cHoco/base16-256colors-TerminalFix/releases)

Development
-----------

Download the development repository using Git:

    git clone --recursive git://github.com/cHoco/base16-256colors-TerminalFix.git

Run `make` to compile the plugin, and `make install` to install it into your
home directory's SIMBL plugins folder.
