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
    [sudo] gem install ennui

Usage
--------------
Ennui has both predicate methods and block methods to support just the unpredictable
DSL you're looking for

```ruby
require 'ennui'
include Ennui

sometimes do
  redirect_user_to_nsfw_site
end
```

Ennui works great as a mixin, too

```ruby
class Account
  def withdraw(dollar_amount)
    ...
    apply_mysterious_surcharge if sometimes?
    ...  
  end
end
``` 

Contributing
--------------
If you'd like to contribute to this project, fork this repo, make your changes,
fixes, or additions, then send a pull request.
