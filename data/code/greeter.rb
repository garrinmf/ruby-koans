#!/usr/bin/env ruby

class Greeter
  def initialize(name = "World")
    @name = name
  end

  attr_accessor :name

  def hi
    puts "Hi #{@name}!"
  end

  def bye
    puts "Bye #{@name}, come back soon."
  end
end

g = Greeter.new("who")

g.hi()

g.bye()

puts Greeter.instance_methods(false)
