require 'yaml'
MESSAGES = YAML.load_file('rps_bonus_features2.yml')

VALID_CHOICES = %w(rock paper scissors lizard spock)

VALID_CHOICES_CONVERSION = { r: "rock", p: "paper",
                             sc: "scissors", l: "lizard", sp: "spock" }

WINNERS = { "rock" => ["scissors", "lizard"], "paper" => ["rock", "spock"],
            "scissors" => ["paper", "lizard"], "lizard" => ["spock", "paper"],
            "spock" => ["rock", "scissors"] }

WIN_SCORE = 5

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
  when "tie" then MESSAGES['tie']
  when "player" then MESSAGES['player_wins']
  when "computer" then MESSAGES['computer_wins']
  end
end

def winning_message(winner, player, computer)
  if winner == "player"
    MESSAGES.fetch(player + computer)
  elsif winner == "computer"
    MESSAGES.fetch(computer + player)
  end
end

def display_grand_winner(player_score, computer_score)
  if player_score == WIN_SCORE
    return MESSAGES['player_grand_winner']
  elsif computer_score == WIN_SCORE
    return MESSAGES['computer_grand_winner']
  end
  nil
end

prompt(MESSAGES['welcome'])
prompt("You must win #{WIN_SCORE} rounds to be the winner. Let's play!")

player_input = ""
player_score = 0
computer_score = 0
prompt("Please make your choice: #{VALID_CHOICES.join(', ')}")

loop do # main loop
  while player_score < WIN_SCORE && computer_score < WIN_SCORE
    loop do
      prompt(MESSAGES['input_options'])
      player_input = gets.chomp.downcase.to_sym
      break if VALID_CHOICES_CONVERSION.key?(player_input)
      prompt(MESSAGES['invalid_choice'])
    end

    player_choice = VALID_CHOICES_CONVERSION.fetch(player_input)
    computer_choice = VALID_CHOICES.sample

    prompt("You chose #{player_choice} and computer chose #{computer_choice}")

    match_winner = win?(player_choice, computer_choice)

    if match_winner != "tie"
      prompt(winning_message(match_winner, player_choice, computer_choice))
    end

    prompt(display_results(match_winner))
    if match_winner == "player"
      player_score += 1
    elsif match_winner == "computer"
      computer_score += 1
    end

    prompt("Your score is #{player_score} and "\
           "computer score is #{computer_score}")

  end

  prompt(display_grand_winner(player_score, computer_score))

  prompt(MESSAGES['play_again'])
  another_match = gets.chomp.downcase
  break unless another_match == "y" || another_match == "yes"
  system("clear") || system("cls")
  player_score = 0
  computer_score = 0
end

prompt(MESSAGES['good_bye'])
