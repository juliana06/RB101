# Input: array
# Output: integer (index of array element)

# Rules
# Explicit requirements
#   - find index of first element that starts with 'Be'

# Questions - should it be case sensitive?

# Algorithm:
#   - find_index of given array
#   - where string's index 0,2 == 'Be'

flintstones = %w(Fred Barney Wilma Betty Bambam Pebbles)

p flintstones.find_index {|name| name[0,2] == 'Be'}