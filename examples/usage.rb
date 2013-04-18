#! /usr/bin/env ruby

require 'ennui'

10.times do
  puts "meh" if Ennui.sometimes?
end
