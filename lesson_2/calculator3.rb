# ask the user for two numbers
# ask the user for an operation to perform
# output the result

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def operation_to_message(op)
  operation =   case op
                when "add"
                  "Adding"
                when "subtract"
                  "Subtracting"
                when "multiply"
                  "Multiplying"
                when "divide"
                  "Dividing"
                end
  operation
end

prompt(MESSAGES['en']['welcome'])

name = ""
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['en']['invalid_name'])
  else
    break
  end
end

prompt("Hello #{name}!")

loop do # main loop
  num1 = ""
  loop do
    prompt(MESSAGES['en']['first_number'])
    num1 = gets.chomp

    if valid_number?(num1)
      break
    else
      prompt(MESSAGES['en']['invalid_number'])
    end
  end

  num2 = ""
  loop do
    prompt(MESSAGES['en']['second_number'])
    num2 = gets.chomp

    if valid_number?(num2)
      break
    else
      prompt(MESSAGES['en']['invalid_number'])
    end
  end

  # operation_prompt = <<-MSG
  #   What operation would you like to perform?
  #   Add
  #   Subtract
  #   Multiply
  #   Divide
  # MSG

  prompt(MESSAGES['en']['operation'])
  operation = ""
  loop do
    operation = gets.chomp.downcase

    if %w(add subtract multiply divide).include?(operation)
      break
    else
      prompt(MESSAGES['en']['invalid_operation'])
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

  prompt(MESSAGES['en']['more_calculation'])
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  system("clear") || system("cls")
end

prompt(MESSAGES['en']['good_bye'])
