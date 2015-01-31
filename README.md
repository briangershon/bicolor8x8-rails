bicolor8x8-rails
================

This is an example app (Rails 4.2) that lets you create and edit 64-character
emoticons for displaying on a bicolor8x8 matrix.

Author: Brian Gershon

License: MIT

How it works
------------

An emoticon is basically a 64-character string representing 8 rows of 8 columns.
'o' for empty, 'r' for red, 'g' for green,'y' for yellow.

For example, this shows a smiley face in green:

    ooggggooogoooogogogoogoggooooooggogoogoggooggoogogoooogoooggggoo

There are also two routes that are called by the Arduino project:

* `/pixel_pics/latest` for displaying the emoticon last created.

* `/pixel_pics/random` for displaying a random emoticon each time.

See <https://github.com/briangershon/bicolor8x8-wifi> for the Arduino project
that consumes this service.
