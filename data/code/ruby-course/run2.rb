require_relative 'hashinitiator'
require_relative 'player'
require_relative 'player2'
require_relative 'treasure'

puts "\n\nProblem #2\n"

player1 = Player2.new('moe')
player2 = Player2.new('larry', 60)
player1.blam
player2.w00t

tr = Treasure.new(:bottle, 25)
puts tr.to_s

player2.found_treasure(tr)
puts player1 # returns "I'm moe with health = 90, points = 0, and score = 90 as of 13:58:50."
puts player2 # returns "I'm larry with health = 75, points = 25, and score = 100 as of 13:58:50."
