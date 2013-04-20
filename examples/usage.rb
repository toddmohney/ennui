#! /usr/bin/env ruby

require "ennui"

class Example 
  include Ennui

  def do_sometimes_predicate_example
    puts
    puts "do sometimes predicate example"
    puts "------------------------------"
    10.times do
      puts "meh" if sometimes?
    end
  end


  def do_sometimes_block_example
    puts
    puts "do sometimes block example"
    puts "--------------------------"
    10.times do
      sometimes do
        puts "pfft"
      end
    end
  end
end

example_runner = Example.new
example_runner.do_sometimes_predicate_example
example_runner.do_sometimes_block_example
