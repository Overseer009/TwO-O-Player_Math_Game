require "./players.rb"
require "./questions.rb"
require "./turn.rb"

class Match
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def first_turn
    players = [@player1, @player2]
    first_player = players.sample
    second_player = players - [first_player]
    second_player = second_player.first

    new_turn = Turn.new(first_player, second_player)

    new_turn.full_turn
  end

  def play_match
    if @player1.lives == 0
      puts "Congradulations! #{@player2.name} wins!"
    elsif @player2.lives == 0
      puts "Congradulations! #{@player1.name} wins!"
    else
      new_turn = Turn.new(@player1, @player2)
      new_turn.full_turn
    end
  end
end
