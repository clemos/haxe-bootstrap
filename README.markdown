## Haxe Bootstrap

This very simple library makes it easier to use 
**[Twitter Bootstrap Javascript plugins](http://twitter.github.com/bootstrap/javascript.html)**
in an **[Haxe/JS](http://www.haxejs.org/)** project

### Getting started

Clone this repository and [Bootstrap](http://twitter.github.com/bootstrap/)'s somewhere :

    git clone git://github.com/clemos/haxe-bootstrap.git
    git clone git://github.com/twitter/bootstrap.git

Include haxe-boostrap to your haXe project's classpath, with `-cp haxe-bootstrap`

### Embedding

By default, the library will take care of embedding the appropriate 
javascript code from bootstrap, so you don't need to link them manually.

You may need to set the path to your local bootstrap repo, though, which you can do either in your build.hxml file:

    --macro bootstrap.Lib.setPath('some-other-path')
    
Or in your code:

    bootstrap.Lib.setPath('yet-another-path')
    
You can also disable embedding with the `-D noEmbedBootstrap` flag.
    
The default path is "lib/bootstrap".
The `setPath` macro uses `haxe.macro.Tools.includeFile`.

### Using Bootstrap

You can then access bootstrap methods in your Haxe/JS class with the `using` keyword :

    using js.bootstrap.Button;
    // ...
        new JQuery(".my-button").button();
    
For better type-safety, methods such as `.button("toggle")` are accessible with `.buttonToggle()`.

The following plugins are currently implemented:

 - **[Buttons](http://twitter.github.com/bootstrap/javascript.html#buttons)** `using js.bootstrap.Button;`
 - **[Dropdowns](http://twitter.github.com/bootstrap/javascript.html#dropdowns)** `using js.bootstrap.Dropdown;`
 - **[Modals](http://twitter.github.com/bootstrap/javascript.html#modals)** `using js.bootstrap.Dropdown;`
 - **[Popovers](http://twitter.github.com/bootstrap/javascript.html#popovers)** `using js.bootstrap.Popover;`
 - **[Tooltips](http://twitter.github.com/bootstrap/javascript.html#tooltips)** `js.bootstrap.Tooltip;`
