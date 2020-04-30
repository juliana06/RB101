# ask the user for two numbers
# ask the user for an operation to perform
# output the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when "add"
    "Adding"
  when "subtract"
    "Subtracting"
  when "multiply"
    "Multiplying"
  when "divide"
    "Dividing"
  end
end

prompt("Welcome to Calculator! Please enter your name: ")

name = ""
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hello #{name}!")

loop do # main loop
  num1 = ""
  loop do
    prompt("What's the first number? ")
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  num2 = ""
  loop do
    prompt("What is the second number? ")
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt("Hmm... that doesn't look like a valid number")
    end
  end

  operation_prompt = <<-MSG
    What operation would you like to perform?
    Add
    Subtract
    Multiply
    Divide
  MSG

  prompt(operation_prompt)
  operation = ""
  loop do
    operation = gets.chomp.downcase

    if %w(add subtract multiply divide).include?(operation)
      break
    else
      prompt("You must choose add, subtract, multiply or divide")
    end
  end

  prompt("#{operation_to_message(operation)} the two numbers...")

  result = case operation
           when "add"
             num1.to_i + num2.to_i
           when "subtract"
             num1.to_i - num2.to_i
           when "multiply"
             num1.to_i * num2.to_i
           when "divide"
             num1.to_f / num2.to_f
           end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the calculator! Good bye")
