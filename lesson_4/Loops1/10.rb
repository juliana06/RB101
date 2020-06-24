# Input: Array of strings
# Outupt: String interpolated with elements of given array

# Rules:
# - Explicit requeriments
#   - use a for loop
#   - greet each friend individually

# Algorithm
# - loop through the given array and, for each name in the array:
#   - print "Hello, .. !" with the element of the array interporlated in the string
# end the loop

friends = ['Sarah', 'John', 'Hannah', 'Dave']

for name in friends 
  puts "Hello, #{name}!"
end