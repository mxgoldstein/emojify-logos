# emojify-logos [![MELPA](https://melpa.org/packages/emojify-logos-badge.svg)](https://melpa.org/#/emojify-logos)
This package adds logos for various programming languages and tools to emojify.el

## Installation
### From MELPA (Recommended)
If you don't already have MELPA, you can read how to set it up [here](https://melpa.org/#/getting-started).

To install emojify-logos type the following two commands
1. ``M-x package-refresh-contents``
2. ``M-x package-install RET emojify-logos``

And package.el will take care of the rest!

### From this repository
Either clone this repository or (download it as a zip) and move its contents to a path within ``load-path``.

## Usage
Just add the following line to your .emacs file:
```elisp
(require 'emojify-logos)
```
And you're ready to roll!

## Logos

| Code           | Icon                                             |
|:--------------:|:------------------------------------------------:|
|``:angularjs:`` |<img src="logos/angularjs.png" height="16"></img> |
|``:c:``         |<img src="logos/c.png" height="16"></img>         |
|``:css3:``      |<img src="logos/css3.png" height="16"></img>       |
|``:c++:``       |<img src="logos/c++.png" height="16"></img>       |
|``:emacs:``     |<img src="logos/emacs.png" height="16"></img>     |
|``:erlang:``    |<img src="logos/erlang.png" height="16"></img>    |
|``:haskell:``   |<img src="logos/haskell.png" height="16"></img>   |
|``:html5:``     |<img src="logos/html5.png" height="16"></img>     |
|``:javascript:``|<img src="logos/javascript.png" height="16"></img>|
|``:latex:``     |<img src="logos/latex.png" height="16"></img>     |
|``:org:``       |<img src="logos/org.png" height="16"></img>       |
|``:pdf:``       |<img src="logos/pdf.png" height="16"></img>       |
|``:perl:``      |<img src="logos/perl.png" height="16"></img>      |
|``:php:``       |<img src="logos/php.png" height="16"></img>       |
|``:python:``    |<img src="logos/python.png" height="16"></img>    |
|``:ruby:``      |<img src="logos/ruby.png" height="16"></img>      |
|``:typescript:``|<img src="logos/typescript.png" height="16"></img>|

## TODO
* Add more logos for languages / modes etc.
* Use uniform icon sizes
* Replace low-quality C icon
* Find a (somewhat) free icon for Java

## Icon Licenses
For a detailed information about the copyright, licenses and trademarks attached to the logos used, see [COPYRIGHT.MD](logos/COPYRIGHT.MD).

## License
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 3
of the License, or (at your option) any later version.

See [LICENSE](LICENSE) for more details.
