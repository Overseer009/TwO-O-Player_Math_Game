require "./players.rb"
require "./questions.rb"
require "./match.rb"

class Turn
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def full_turn
    new_q1 = Question.new
    new_q2 = Question.new

    puts "---- New Turn: #{@player1.name} ----"
    puts "#{@player1.name}: #{new_q1.equation}  "
    answer = gets.chomp.to_i
    if answer == new_q1.result
      puts "#{@player1.name}: Correct!  "
      puts "You have #{@player1.lives} / 3 lives left!"
    else
      puts "#{@player1.name}: Wrong answer! lost a Life!  "
      puts "You now have #{@player1.minus_life} / 3 left" 
    end

    puts"---- New Turn: #{@player2.name} ----"
    puts "#{@player2.name}: #{new_q2.equation}  "
    answer = gets.chomp.to_i
    if answer == new_q2.result
      puts "#{@player2.name}: Correct!  "
      puts "You have #{@player1.lives} / 3 lives left!"
    else
      puts "#{@player2.name}: Wrong answer! lost a Life!  "
      puts "You now have #{@player2.minus_life} / 3 left" 
    end

    play = Match.new(@player1, @player2)
    play.play_match
  end
end
