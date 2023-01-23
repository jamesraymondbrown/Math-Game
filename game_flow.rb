require_relative 'questions'
require_relative 'players'



def start
  puts "Welcome to the math game!"
  puts "Player 1, you're up first. Are you ready?"
  puts @questions[0][:question]

  print "> "
  choice = $stdin.gets.chomp.to_s

  if choice == @questions[0][:answer]
    puts "Great job!"
    puts "P1: " + player_1.lives.to_s + "/3, P2: " + player_2.lives.to_s + "/3"
  else
    puts "Oh no! You got it wrong :( Now you lose a life 🔪"
    # player_1.lose_life
    puts "P1: " + player_1.lives.to_s + "/3, P2: " + player_2.lives.to_s + "/3"
  end
end

# start

player_1 = Player.new("Player_1", "P1")
player_2 = Player.new("Player_2", "P2")

puts player_1.short_name
