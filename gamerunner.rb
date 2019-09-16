class Gamerunner
  attr_accessor :gameover, :p1_points, :p2_points
  
  def initialize 
    @gameover = false
    @p1_points = 3
    @p2_points = 3
  end


  def start
    p1_turn = true
    while !@gameover
      
      num1 = rand(1...20)
      num2 = rand(1...20)
      ans = num1 + num2

      if(p1_turn)
        puts "Player 1: What does #{num1} plus #{num2} equal?"
        player_ans = gets.chomp.to_i
       
        if ans == player_ans  
          puts "Player1: Yes! You are correct." 
        else
            puts "Player1: Seriously? No!"
            @p1_points = @p1_points - 1
        end
       
      else
        puts "Player 2: What does #{num1} plus #{num2} equal?"
        player_ans = gets.chomp.to_i
       
        if ans == player_ans  
          puts "Player2: Yes! You are correct." 
        else
            puts "Player2: Seriously? No!"
            @p2_points = @p2_points - 1
        end       
        
      end

      puts "P1 #{@p1_points}/3 vs P2: #{@p2_points}/3"
      puts "----- NEW TURN -----"
      p1_turn = !p1_turn

      if @p1_points == 0 || @p2_points == 0
        break
      end
   
    end
    if @p1_points > @p2_points
      puts "Player 1 wins with a score of #{@p1_points}/3"
    else
      puts "Player 2 wins with a score of #{@p2_points}/3"
    end
    puts "----- GAME OVER -----"
    puts "Good Bye!"

  end


end

