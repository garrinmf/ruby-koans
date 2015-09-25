require_relative 'gameturn'
require_relative 'filefunctions'
require_relative 'dice'
require_relative 'game'
require_relative 'game2'
require_relative 'game3'
require_relative 'player'
require_relative 'player2'
require_relative 'treasure'

puts "Problem #1\n"

player1 = Player.new('moe')
player2 = Player.new('larry', 60)
player1.blam
player2.w00t
puts player1 # returns: "I'm moe with health = 90"
puts player2 # returns: "I'm larry with health = 75"

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

puts "\n\nProblem #3\n"

g = Game.new('roulette')
g.add_player(player1)
g.add_player(player2)
g.play
puts player1
puts player2

strong, weak = g.lions_and_sheep
puts "Strong: #{strong}"
puts "Weak: #{weak}"

puts "\n\nProblem #4\n"

g = Game2.new('roulette')
g.add_player(player1)
g.add_player(player2)
g.play 2

g.print_stats
