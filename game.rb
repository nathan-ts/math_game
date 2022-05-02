require './player'
require './question'

class Game

  def initialize()
    @p1 = Player.new(1)
    @p2 = Player.new(2)
    @turn = 1
  end

  def start_game()
    # Loop through each turn
    while (@p1.alive? && @p2.alive?) do
      puts "===== TURN #{@turn} ====="
      player = @p1
      opp = @p2
      if (@turn % 2 == 0)
        player = @p2
        opp = @p1
      end
      # Generate and display question
      q = Question.new()
      puts "#{player.name}: #{q.question}"
      # Get answer and remove life if incorrect
      res = gets.chomp
      if q.answer == res.to_i
        puts "#{player.name}: Once again, you have judged correctly."
      else 
        puts "#{player.name}: That's a negatory."
        player.fail
      end
      puts "Over here we have #{@p1.name} with #{@p1.lives} lives left! And in this corner #{@p2.name} with #{@p2.lives} lives left."

      @turn += 1
    end
    # Declare winner
    if @p1.alive?
      puts "#{@p1.name} wins with #{@p1.lives}/3 lives left!"
    else
      puts "#{@p2.name} wins with #{@p2.lives}/3 lives left!"
    end
    puts "===== GAME OVER ====="
    puts "A strange game. The only winning move is not to play."

  end

end