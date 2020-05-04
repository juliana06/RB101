VALID_CHOICES = %w(rock paper scissors lizard spock)

VALID_CHOICES_CONVERSION = { r: "rock", p: "paper",
                             sc: "scissors", l: "lizard", sp: "spock" }

WINNERS = { "rock" => ["scissors", "lizard"], "paper" => ["rock", "spock"],
            "scissors" => ["paper", "lizard"], "lizard" => ["spock", "paper"],
            "spock" => ["rock", "scissors"] }

WINNING_MESSAGES = { "scissorspaper" => "Scissors cuts paper!", "paperrock" => "Paper covers rock!",
                      "rocklizard" => "Rock crushes lizard!", "lizardspock" => "Lizard poisons Spock!",
                      "spockscissors" => "Spock smashes scissors", "scissorslizard" => "Scissors decapitates lizard!",
                      "lizardpaper" => "Lizard eats paper!", "paperspock" => "Paper disproves Spock!",
                      "spockrock" => "Spock vapourises rock!", "rockscissors" => "Rock crushes scissors" }

def prompt(message)
  puts "=> #{message}"
end

def win?(player, computer) 
  if player == computer
    "tie"
  elsif WINNERS[player].include?(computer)
    "player"
  else
    "computer"
  end
end

def display_results(winner)
  case winner
  when "tie" then "It's a tie"
  when "player" then "You won!"
  when "computer" then "Computer won!"
  end
end

def winning_message(winner)
  if winner == "player"
    WINNING_MESSAGES.fetch(@player_choice + @computer_choice)
  elsif winner == "computer"
    WINNING_MESSAGES.fetch(@computer_choice + @player_choice)
  end
end

prompt("Welcome to the game!")

player_input = ""
player_score = 0
computer_score = 0
prompt("Please make your choice: #{VALID_CHOICES.join(', ')}")

loop do # main loop
  while player_score < 5 && computer_score < 5
    loop do
      prompt("Type R for rock, P for paper, Sc for scissors, L for lizard and Sp for Spoke")
      player_input = gets.chomp.downcase.to_sym
      break if VALID_CHOICES_CONVERSION.key?(player_input)
      prompt("This is not a valid choice")
    end

    @player_choice = VALID_CHOICES_CONVERSION.fetch(player_input)
    @computer_choice = VALID_CHOICES.sample

    prompt("You chose #{@player_choice} and computer chose #{@computer_choice}")

    match_winner = win?(@player_choice, @computer_choice)

    prompt(winning_message(match_winner)) if match_winner != "tie"

    prompt(display_results(match_winner))
    
    if match_winner == "player"
      player_score += 1
    elsif match_winner == "computer"
      computer_score += 1
    end

    prompt("Your score is #{player_score} and computer score is #{computer_score}")

  end

  prompt(player_score == 5 ? "You're the grand winner!" : "The computer is the grand winner")

  prompt("Do you want to play again?")
  another_match = gets.chomp.downcase
  break unless another_match.start_with?("y")
  player_score = 0
  computer_score = 0
end

puts "Thank you for playing!"
