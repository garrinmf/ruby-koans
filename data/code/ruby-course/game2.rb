class Game2 < Game
  include GameTurn

  def play(turn, debug = false)
    turn.times.each do |i|
      @players.each do |player|
        take_turn(player)
      end
      if (debug == true)
        puts "Round #{i}"
        print_stats
      end
    end
    nil
  end

  def print_stats
    strong, weak = lions_and_sheep

    print_stats_partial('strong', strong)
    print_stats_partial('weak', weak)
  end

  def print_stats_partial(label, players)
    puts "#{label.capitalize} Players:"
    players.each { |player| puts "- #{player.name}: #{player.health} (points: #{player.points})" }
    puts
  end
end
