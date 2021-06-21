require "./players.rb"
require "./questions.rb"
require "./match.rb"
require "./turn.rb"

print "Player One, What is your name?  "
name1 = gets.chomp
p1 = Player.new(name1)

print "Player Two, What is your name?  "
name2 = gets.chomp
p2 = Player.new(name2)

new_match = Match.new(p1, p2)

new_match.first_turn