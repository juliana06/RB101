VALID_CHOICES = %w(rock paper scissors)

def prompt(message)
  puts "=> #{message}"
end

def win?(user, computer)
  (user == "rock" && computer == "scissors") ||
    (user == "paper" && computer == "rock") ||
    (user == "scissors" && computer == "paper")
end

def display_results(user, computer)
  if user == computer
    prompt("It's a tie!")
  elsif win?(user, computer)
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
