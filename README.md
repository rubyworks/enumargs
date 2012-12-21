# Enumerable::Arguments

[Website](http://rubyworks.github.com/enumargs) /
[Report Issue](http://github.com/rubyworks/enumargs/issues) /
[Gem Package](http://rubygems.org/gems/enumargs) /
[Source Code](http://github.com/rubyworks/enumargs)
( [![Build Status](https://secure.travis-ci.org/rubyworks/enumargs.png)](http://travis-ci.org/rubyworks/enumargs) )


This is a simple reimplementation of the core Enumerable module
to allow its methods to take and pass on arbitrary arguments to the
underlying `#each` call. This library uses Enumerator and scans
Enumerable to dynamically construct its methods, so it should always
be in sync with the current implementation of Ruby's Enumerable class.


## Limitations

* Methods `#inject` and `#zip` cannot use pass-on parameters, b/c they already have their own.
* Methods `#find` and `#detect` have a modified interface so they can support pass-on parameters.


## Synopsis

```ruby
   class T
     include Enumerable::Arguments

     def initialize(arr)
       @arr = arr
     end

     def each(n)
       arr.each{ |e| yield(e+n) }
     end
   end

   t = T.new([1,2,3])
   t.collect(4)
   #=> [5,6,7]
```

## Installation

To install with RubyGems simply open a console and type:

    gem install enumargs

Local installation requires Setup.rb (gem install setup),
then download the tarball package and type:

    tar -xvzf enumargs-2.0.0.tgz
    cd enumargs-2.0.0
    sudo setup.rb all

Windows users use 'ruby setup.rb all'.


## Copyrights

Enumargs is copyrighted open source software.

    Copyright (c) 2004 Rubyworks

This program is distributed under the terms of the **BSD-2-Clause** license.

See LICENSE file for details.
