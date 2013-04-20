Ennui
==============

[![Build Status](https://travis-ci.org/toddmohney/ennui.png?branch=master)](https://travis-ci.org/toddmohney/ennui)
[![Code Climate](https://codeclimate.com/github/toddmohney/ennui.png)](https://codeclimate.com/github/toddmohney/ennui)

A gem for when you just don't care what gets executed

Ennui provides a library of predicates which return true at various frequencies.
These predicates are useful when you wish to introduce a bit of randomness or 
apathy to your view elements, for example.

Installing
--------------
    sudo gem install ennui

Usage
--------------
```ruby
require 'ennui'
include Ennui

# sometimes this will print "meh", sometimes it won't
puts "meh" if sometimes?

# sometimes this will yield to the block, sometimes it won't
sometimes { puts "whatever" }
```

Contributing
--------------
If you'd like to contribute to this project, fork this repo, make your changes,
fixes, or additions, then send a pull request.

License
--------------
This code is free to use under the terms of the MIT license.
