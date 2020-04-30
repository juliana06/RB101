# user makes a choice
# computer makes a choice
# winner is displayed

# START
# GET user's choice
# SET computer's choice
# determine the winning choice
# display result

# MY VERSION (BEFORE LOOKING AT THE VIDEO):

# def prompt(message)
#   puts "=> #{message}"
# end

# def valid_user_choice?(input)
#   input == "rock" || input.downcase == "paper" || input.downcase == "scissors"
# end

# def winner(user, computer)
#   if user == computer
#     "It's a tie!"
#   else
#     case user
#     when "scissors"
#       if computer == "paper"
#         "You're the winner!"
#       else
#         "The computer won!"
#       end
#     when "rock"
#       if computer == "scissors"
#         "You're the winner!"
#       else
#         "The computer won!"
#       end
#     when "paper"
#       if computer == "rock"
#         "You're the winner!"
#       else
#         "The computer won!"
#       end
#     end
#   end
# end

# prompt("Welcome to Rock Paper Scissors!")

# prompt("Please choose Rock, Paper or Scissors: ")
# user_input = nil
# loop do
#   user_input = gets.chomp.downcase
#   if valid_user_choice?(user_input)
#     break
#   else
#     prompt("You must select Rock, Paper or Scissors: ")
#   end
# end

# computer_choice = ["rock", "paper", "scissors"].sample

# prompt("You chose #{user_input} and the computer chose #{computer_choice}.")
# prompt(winner(user_input, computer_choice))

# AFTER WATCHING THE VIDEO

VALID_CHOICES = ["rock", "paper", "scissors"]

def prompt(message)
  puts "=> #{message}"
end

def display_results(user, computer)
  if user == computer
    prompt("It's a tie!")
  elsif (user == "rock" && computer == "scissors") ||
        (user == "paper" && computer == "rock") ||
        (user == "scissors" && computer == "paper")
    prompt("You're the winner!")
  else
    prompt("The computer won!")
  end
end

prompt("Welcome to rock, paper scissors!")

loop do
  user_choice = ''
  loop do
    prompt("Make your choice: #{VALID_CHOICES.join(', ')}?")
    user_choice = gets.chomp.downcase
    if VALID_CHOICES.include?(user_choice)
      break
    else
      prompt("That is not a valid choice...")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{user_choice} and computer chose #{computer_choice}")

  display_results(user_choice, computer_choice)

  prompt("Do you want to play again?")
  answer = gets.chomp.downcase
  break unless answer.start_with?("y")
end

prompt("Thank you for playing!")
