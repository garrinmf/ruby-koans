require_relative 'gameturn'
require_relative 'dice'
require_relative 'game'
require_relative 'player'
require_relative 'player2'
require_relative 'treasure'

puts "\n\nProblem #3\n"

player1 = Player2.new('moe')
player2 = Player2.new('larry', 60)
player1.blam
player2.w00t

tr = Treasure.new(:bottle, 25)
player2.found_treasure(tr)

g = Game.new('roulette')
g.add_player(player1)
g.add_player(player2)
g.play
puts player1
puts player2

strong, weak = g.lions_and_sheep
puts "Strong: #{strong}"
puts "Weak: #{weak}"
