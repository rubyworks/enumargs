# Enumerable::Arguments

[Website](http://rubyworks.github.com/enumargs) /
[Report Issue](http://github.com/rubyworks/enumargs/issues) /
[Gem Package](http://rubygems.org/gems/enumargs) /
[Source Code}](http://github.com/rubyworks/enumargs)


### DESCRIPTION

This is a simple reimplementation of the core Enumerable module
to allow its methods to take and pass-on arbitrary arguments to the
underlying `#each` call. This library uses Enumerator and scans
Enumerable so it can always stay in sync.


### FEATURES/ISSUES

* Dynamically constructed based on Enumerable.
* Methods #inject and #zip do not take parameters.
* Methods #find and #detect have a modified interface.


### SYNOPSIS

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

### INSTALLATION

To install with RubyGems simply open a console and type:

  gem install enumargs

Local installation requires Setup.rb (gem install setup),
then download the tarball package and type:

  tar -xvzf enumargs-2.0.0.tgz
  cd enumargs-2.0.0
  sudo setup.rb all

Windows users use 'ruby setup.rb all'.


### COPYRIGHTS

Enumargs is copyrighted open source software.

    Copyright (c) 2004 Rubyworks

This program is distributed under the terms of the **BSD-2-Clause** license.

See LICENSE file for details.