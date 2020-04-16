# ask the user for two numbers
# ask the user for an operation to perform
# output the result

puts "Welcome to Calculator!"

puts "What's the first number? "
num1 = gets.chomp

puts "What is the second number? "
num2 = gets.chomp

puts "What is the operation? (add, subtract, multiply or divide) "
operation = gets.chomp.downcase

if operation == "add" || operation == "+"
  puts "The sum of #{num1} and #{num2} is #{num1.to_i + num2.to_i}."
elsif operation == "subtract" || operation == "-"
  puts "The subtraction of #{num1} and #{num2} is #{num1.to_i - num2.to_i}."
elsif operation == "multiply" || operation == "*"
  puts "The multiplication of #{num1} and #{num2} is #{num1.to_i * num2.to_i}."
elsif operation == "divide" || operation == "/"
  puts "The division of #{num1} and #{num2} is #{num1.to_f / num2.to_f}."
else
  puts "You have entered an invalid operation."
end

