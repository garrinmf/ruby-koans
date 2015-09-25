Ruby Course
===================

Problem #1
---------
create a Player class, with:

 - Attributes
	 - Name
	 - Health (default 100)
 - Methods
	 - initialize
	 - magic method to string
	 - strong? (calculates if player has health over 100)
	 - blam (reduce health by 10)
	 - w00t (increase health by 15)

Test:
--
```ruby
player1 = Player.new("moe")  
player2 = Player.new("larry", 60)  
player1.blam  
player2.w00t  
puts player1 #returns: "I'm moe with health = 90"  
puts player2 #returns: "I'm larry with health = 75"  
```

----------

Problem #2
---------
Add a Treasure Class with attributes name and points.  
Add a found_treasures attribute to the player Class, it is a Hash with key the name of the treasure and value the $$ of the treasure  
Add a method "points" which calculates the total sum of all the treasures values, one-liner plz  
Add a "score" method which returns the sum of health and points  
Add a "time" method which returns the current time in format "13:58:50", hours, mins, seconds  
Add a "found_treasure" method which takes as an argument an obj of Treasure

Test:  
--
```ruby
tr = Treasure.new(:bottle, 25)  
player2.found_treasure(tr)  
puts player1 #returns "I'm moe with health = 90, points = 0, and score = 90 as of 13:58:50."  
puts player2 #returns "I'm larry with health = 75, points = 25, and score = 100 as of 13:58:50."  
```

----------

Problem #3
--------
Add a Game class with attributes, title and players. Attribute players is private and is an array, it holds the player objects.  
Game has also a method called ```add_player``` which takes a player obj as an argument and adds it to its private attribute.  
Add a Dice class with method ```roll``` which returns a random number from 1 to 6  

Add a play method to the Game class which takes a turn for each player
  - if dice rolls to 1 or 2, player is "blamed"
  - 3,4 then the player gets skipped
  - 5,6 the players is "w00ted"

BONUS: add a method called ```lions_and_sheep``` which returns in 2 arrays the strong and the not strong players. One-liner as well. Use strong? method of player

Test:  
--
```ruby
g = Game.new('roulette')
g.add_player(player1)
g.add_player(player2)
g.play.play
puts player1
puts player2

strong, weak = g.lions_and_sheep

```


Problem #4
-------

Add a module called GameTurn with a method take_turn which actually does what the play method did. take_turn has as an argument a player obj. play method now uses the take_turn method. take_turn is static.  
"play" method of Game now has a rounds argument. eg. ```g.play(3)```. Which actually takes for each round a turn for each player
Add a ```print_stats``` method which outputs the stats.
```
Strong Players:
Lelos: 130 points
Tzeni: 105 points

Wimpy Players:
Antonis: 50 points
Stefanos: 40 points
```

-----

Final
======

Make the whole game work as intented. Actually make the below code work.
Save high scores would actually save the final scores of all players in one file(txt).

Test:
----
```ruby
#!/usr/bin/env ruby
require_relative 'game'

knuckleheads = Game.new 'Knuckleheads'
knuckleheads.load_players(ARGV.shift || 'players.csv')

loop do
	puts "\nHow many game rounds? ('quit' to exit)"
	answer = gets.chomp.downcase
	case answer
	when /^\d+$/
		knuckleheads.play answer.to_i
	when 'quit', 'exit', 'q'
		knuckleheads.print_stats
		knuckleheads.save_high_scores
		break
	else
		puts "Please enter a number or 'quit'"
	end
end
```

players.csv
---
```csv
Mitsos,54
Yiannis,120
George,98
Alex,74
Ztoup,88
Nasos,45
Stef,81
```

treasures.csv
---
```csv
pie, 5
bottle, 25
hammer, 50
skillet, 100
broomstick, 200
crowbar, 400
```
