## Haxe Bootstrap

This is very simple library that eases the use of [Twitter Bootstrap](http://twitter.github.com/bootstrap)
Javascript components in an [haXe](http://haxe.org) project

### Getting started

Clone this repository and Bootstrap's somewhere :

    git clone git://github.com/clemos/haxe-bootstrap.git
    git clone git://github.com/twitter/bootstrap.git

Include the haxe-boostrap directory to your haXe project's classpath, something like :

    -cp haxe-boostrap
    
By default, the haXe compiler will take care of including the appropriate .js files from bootstrap.
You may need to change this path, though, which you can do with a macro, either in your build.hxml file :

    -macro bootstrap.Lib.setPath('some-other-path')
    
Or in your code :

    bootstrap.Lib.setPath('yet-another-path')