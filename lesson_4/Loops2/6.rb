# Input: array with strings
# Output: strings in the given array

# Rules
# - Explicit requirements
#   - use loop
#   - print and remove elements in the array
#   - stop the loop when array is empty

# Algorithm
# - use a loop to iterate through the given array
# - in each iteration print one element
# - remove the printed element from the array
# - stop the loop once the array is empty

names = ['Sally', 'Joe', 'Lisa', 'Henry']

loop do
  puts names.shift
  break if names.empty?
end

# Further Exploration

# loop do
#   puts names.pop
#   break if names.empty?
# end