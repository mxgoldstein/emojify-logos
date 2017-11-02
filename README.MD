# emojify-logos
This package adds logo icons for various programming languages and tools to emojify.el

## TODO
* Add more logos for languages / modes etc.
* Use uniform icon sizes
* Replace low-quality C icon
* Find a (somewhat) free icon for Java

## Installation
### From this repository
Either clone this repository or download it as a zip and place ``emojify-logos.el`` in a directory within your emacs-load-path.  
You can optionally move / link the ``logos`` folder to your ``.emacs/emojis`` folder (or just download it later on using ``M-x emojify-logos-download``).

## Usage
Just add the following line to your .emacs file:
```
(require 'emojify-logos)
```

You can also download / update your logo set using ``M-x emojify-logos-download``.

## LICENSE
This program is free software; you can redistribute it and/or
modify it under the terms of the GNU General Public License
as published by the Free Software Foundation; either version 3
of the License, or (at your option) any later version.

See LICENSE for more details.
