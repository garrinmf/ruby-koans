require_relative 'gameturn'
require_relative 'filefunctions'
require_relative 'hashinitiator'
require_relative 'dice'
require_relative 'game'
require_relative 'game2'
require_relative 'game3'
require_relative 'player'
require_relative 'player2'
require_relative 'treasure'
require_relative 'treasure2'
require 'csv'

knuckleheads = Game3.new 'Knuckleheads'
treasures = knuckleheads.load_treasures(ARGV.shift || 'treasures.csv')
knuckleheads.load_players(ARGV.shift || 'players.csv', treasures)

loop do
  puts "\nHow many game rounds? ('quit' to exit)"
  answer = gets.chomp.downcase
  knuckleheads.play answer.to_i
  case answer
  when /^\d+$/
    puts "Let's  play #{answer} rounds"
    knuckleheads.play(answer.to_i, true)
    filename = knuckleheads.save_high_scores(knuckleheads.players)
    puts "Scores saved to #{filename}"
  when 'quit', 'exit', 'q'
    puts 'Bye bye!'
    break
  else
    puts "Please enter a number or 'quit'"
  end
end
