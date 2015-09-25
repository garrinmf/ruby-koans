class Game
  def initialize(title)
    @title = title
    @players = []
  end

  def add_player(player)
    @players << player
  end

  def play
    @players.each do |player|
      if Dice.roll.between?(1, 2)
        player.blam
      elsif Dice.roll.between?(5, 6)
        player.w00t
      end
    end
    nil
  end

  def lions_and_sheep
    strong = []
    weak = []
    @players.each do |player|
      (player.strong? ? strong : weak) << player
    end
    [strong, weak]
  end
end
