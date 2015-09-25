require_relative 'player'

puts "Problem #1\n"

player1 = Player.new('moe')
player2 = Player.new('larry', 60)
player1.blam
player2.w00t
puts player1 # returns: "I'm moe with health = 90"
puts player2 # returns: "I'm larry with health = 75"
