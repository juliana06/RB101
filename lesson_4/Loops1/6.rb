# Input: none
# Output: print elements of an array

# rules
# - Explicit
#   - use a while loop
#   - variable numbers is an empty array
#   - print 5 random numbers between 0 and 99

# Data Sctructure
# - array (variable given is an empty array)

# Algorithm
# - initialize numbers variable and assign it to an empty array
# - initialize the while loop
# - set while loop condition to keep looping while numbers array size is less than 5
# - use the #rand method to return a random number between 0 and 99
# - push the number returned by #rand into the numbers array
# - end the while loop
# - print numbers array



numbers = []

while numbers.size < 5
  numbers << rand(0..99)
end

puts numbers