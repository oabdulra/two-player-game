require './players'

class Game 

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @playerturn = false
  end

  
  def question
    @num1 = rand(20)
    @num2 = rand(20)
    @answer = @num1 + @num2

    puts "What is #{@num1} + #{@num2} equal?"
  end

  def gameinit

    turn = 0

    puts "Enter Player 1's name: "
    p1name = gets.chomp
    player1 = Player.new(p1name)

    puts "Enter Player 1's name: "
    p2name = gets.chomp
    player2 = Player.new(p2name)


    while(player1.lives > 0 && player2.lives > 0) do
      currplayer = ( turn == 0) ? player1 : player2
      newquestion = @question
      puts "#{player.name}:#{newquestion}"

      pans = gets.chomp

      if pans == @question.@answer
        puts "Correct!"
      else
        player.lives -=1
      end
      turn += 1
    end

    if (player1.lives == 0)
      puts "You lost #{player1.name} and #{player2.name} won!"
    else 
      puts "You lost #{player2.name} and #{player1.name} won!"
    end


      
end