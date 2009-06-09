GradientServer
==============

A simple image server that will render vertical gradient images suitable for use as backgrounds.

Requires:

 - Rails 2.3
 - RMagick
 
Please note this is basically 10 lines of code and I'm just throwing it out there for chuckles.
 
Install:

    ./script/plugin install git://github.com/tablatom/gradient_server.git

Then just fetch an image using a URL as follows

    /gradient_images/<height>:<start-color>:<end-color>.<format>

Colors are 3 or 6 digit hex values, as in CSS.

e.g. try something like this in your stylesheet

    div.featured { background: url(/gradient_images/50:aaa:fff.png) repeat-x white }

You can also do multiple gradients, separated by '::', which are stacked vertically:

    div.featured { 
      height: 100px;
      background: url(/gradient_images/50:aaa:fff::50:fff:aaa.png) repeat-x 
    }
    
Uses page-caching. The images will end up in `public/gradient_images` and will then serve up
without hitting any ruby code.
    
Copyright (c) 2009 Tom Locke, released under the MIT license
