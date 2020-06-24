# Input: array with strings
# Output: hash - names from array are keys and values are positions in the array

# Rules
# Explicit requirements
#   - names from given array should be the hash keys
#   - hash value should be position in the array

# Algorithm
#   - start a counter
#   - start an empty hash
#   - loop through the array
#   - insert a pair into the hash where:
#     - key is array[counter]
#     - value is counter

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

counter = 0 #solution 1 and 3
hsh = {} #solution 1 and 2

# solution 1
# loop do
#   break if counter == flintstones.size
#   hsh[flintstones[counter]] = counter
#   counter += 1
# end

# solution 2
flintstones.each_with_index do |name, index|
  hsh[name] = index
end

# solution 3
# flintstones.each_with_object({}) do |name, pair|
#   pair[name] = counter
#   counter += 1
# end

p hsh #solution 1 and 2



