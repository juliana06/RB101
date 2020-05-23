# puts "the value of 40 + 2 is " + (40 + 2)
# will return a syntax error - cannot sum string to integer
# the reason why it happens is because we are trying to operate with 2 different data
# types (String and Integer) without conversion and/or string interpolation 
# 40 + 2 results in an integer and we're trying to concatenate to a string
# Correct: returns a Type Error - no conversion of Integer into String

# ways to fix it:

puts "the value of 40 + 2 is " + (40 + 2).to_s
puts "the value of 40 + 2 is #{40 + 2}"

