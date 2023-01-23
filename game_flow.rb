require_relative 'players'
require_relative 'question_class'

class Game
  
  def initialize
    @player_1 = Player.new("Player_1", "P1")
    @player_2 = Player.new("Player_2", "P2")
  end

  def start
    puts "Welcome to the math game!"
    puts "Player 1, you're up first. Are you ready?"
    question = Question.new

    puts question.q_string

    print "> "
    choice = $stdin.gets.chomp.to_s

    if choice == question.answer.to_s
      puts "💸 Great job! 💸"
      puts "P1: " + @player_1.lives.to_s + "/3, P2: " + @player_2.lives.to_s + "/3"
    else
      puts "🔪🔪🔪 Oh no! You got it wrong :( Now you lose a life 🔪🔪🔪"
      @player_1.lose_life
      puts "P1: " + @player_1.lives.to_s + "/3, P2: " + @player_2.lives.to_s + "/3"
    end

    player_2_question
  end

  def player_2_question

    puts "----- NEW TURN -----"
    puts "Player 2: "
    question = Question.new

    puts question.q_string

    print "> "
    choice = $stdin.gets.chomp.to_s

    if choice == question.answer.to_s
      puts "💸 Great job! 💸"
      puts "P1: " + @player_1.lives.to_s + "/3, P2: " + @player_2.lives.to_s + "/3"
    else
      puts "🔪🔪🔪 Oh no! You got it wrong :( Now you lose a life 🔪🔪🔪"
      @player_2.lose_life
      puts "P1: " + @player_1.lives.to_s + "/3, P2: " + @player_2.lives.to_s + "/3"
    end

    if @player_1.lives.to_s == "0"
      puts "Winner is player 2 with a score of #{@player_2.lives.to_s}/3"
      exit(0)
    elsif @player_2.lives.to_s == "0"
      puts "Winner is player 1 with a score of #{@player_1.lives.to_s}/3"
      exit(0)
    end

    player_1_question
  end

  def player_1_question

    puts "----- NEW TURN -----"
    puts "Player 1: "
    question = Question.new

    puts question.q_string

    print "> "
    choice = $stdin.gets.chomp.to_s

    if choice == question.answer.to_s
      puts "💸 Great job! 💸"
      puts "P1: " + @player_1.lives.to_s + "/3, P2: " + @player_2.lives.to_s + "/3"
    else
      puts "🔪🔪🔪 Oh no! You got it wrong :( Now you lose a life 🔪🔪🔪"
      @player_1.lose_life
      puts "P1: " + @player_1.lives.to_s + "/3, P2: " + @player_2.lives.to_s + "/3"
    end

    if @player_1.lives.to_s == "0"
      puts "Winner is player 2 with a score of #{@player_2.lives.to_s}/3"
      exit(0)
    elsif @player_2.lives.to_s == "0"
      puts "Winner is player 1 with a score of #{@player_1.lives.to_s}/3"
      exit(0)
    end

    player_2_question
  end

end