#!/usr/bin/env ruby

class Greeter
  def initialize(names = "World")
    @names = names
  end

  attr_accessor :names

  def hi
    if @names.respond_to?("join")
      # @names is a list of some kind, iterate!
      @names.each do |name|
        puts "Hello #{name}!"
      end
    else
      puts "Hi #{@names}!"
    end
  end

  def bye
    if @names.respond_to?("join")
      # Join the list elements with commas
      puts "Bye bye #{@names.join(", ")}!"
    else
      puts "Bye #{@names}, come back soon."
    end

  end
end

if __FILE__ == $0
  g = Greeter.new("who")

  g.hi()
  g.bye()

  g.names=["who", "are", "you"]
  g.hi()
  g.bye()
end
