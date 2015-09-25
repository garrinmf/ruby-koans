module FileFunctions
  def load_players(filename, treasures)
    CSV.foreach(filename, headers: true, header_converters: :symbol, converters: :all) do |row|
      player_hash = Hash[row.headers[0..-1].zip(row.fields[0..-1])]
      player = Player2.new(player_hash)
      player.found_treasure(treasures[rand(treasures.length)])
      add_player(player)
    end
  end

  def load_treasures(filename)
    treasures = []
    CSV.foreach(filename, headers: true, header_converters: :symbol, converters: :all) do |row|
      treasures << Treasure2.new(Hash[row.headers[0..-1].zip(row.fields[0..-1])])
    end
    treasures
  end

  def save_high_scores(players, filename = "results.csv")
    CSV.open(filename, 'w') do |csv|
      csv << ['name', 'health', 'points', 'score', 'strong?']
      players.each do |player|
        csv << [player.name, player.health, player.points, player.score, player.strong?.to_s]
      end
    end
    filename
  end
end
