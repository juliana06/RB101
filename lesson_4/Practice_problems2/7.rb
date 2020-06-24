# Input: string
# Output: hash

# Rules
# Explicit requirements
#   - create a hash
#   - keys will be letters in the string. associated value will be frequency it occurs in the string
# Question - should we diffirenciate upper and lower case?

# Algorithm
#   - iterate through the string
#   - as you find new letters, create a new key and associate it to 1
#   - when you find already existing letter, increase the value number by 1

statement = 'The Flintstones Rock'

hsh = {}

statement.delete(' ').each_char do |letter|
  if hsh.has_key?(letter)
    hsh[letter] += 1
  else
    hsh[letter] = 1
  end
end

p hsh

