module GameTurn
  def take_turn(player)
    if Dice.roll.between?(1, 2)
      player.blam
    elsif Dice.roll.between?(5, 6)
      player.w00t
    end
  end
end
