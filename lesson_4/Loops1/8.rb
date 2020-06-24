# Input: array with integers
# Output: elements of the given array

# Rules
# - Explicit requirements
#   - use until loop
#   - print each element of the given array

# Algorithm
# - initialize a counter for the loop
# - start the until loop and set its condition to loop until counter == numbers size
# - print element from array using counter's index number
# - increment counter by 1 (counter += 1)
# - end the loop (it should iterate to cover all numbers in the array)

numbers = [7, 9, 13, 25, 18]
counter = 0

until counter == numbers.size
  puts numbers[counter]
  counter += 1
end