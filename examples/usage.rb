#! /usr/bin/env ruby

require "ennui"

class Example 
  include Ennui

  def initialize
    10.times do
      puts "meh" if sometimes?
    end
  end
end

Example.new
