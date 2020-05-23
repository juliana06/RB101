# def factors(number)
#   divisor = number
#   factors = []
#   loop do
#     if number <= 0
#       puts "Number must be positive"
#       break
#     else
#       factors << number / divisor if number % divisor == 0
#       divisor -= 1
#       break if divisor == 0
#     end
#   end
#   factors
# end

# puts factors(10)

# Bonus 1 - what is the purpose of number % divisor == 0?
# to be a factor the division must be exact (no remainder).
# that code is checking that reminder was zero (hence exact division)

# Bonus 2 - what is the purpose of "factors" in line 14? (8 on the original problem)
# to make method return factors

# Second answer

def factors(number)
  divisor = number
  factors = []
  while divisor > 0
    factors << number / divisor if number % divisor == 0
    divisor -= 1
  end
  factors
end

puts factors(10)