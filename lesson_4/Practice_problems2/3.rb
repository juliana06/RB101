# Input: hash
# Output: modified hash

# Rules
# Explicit requirements
#   - remove people with age 100 and greater from original hash

# Algorithm
#   - select all pairs where value < 100 --> solution 1
#   - delete_if value > 100 --> solution 2



ages = {"Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10}

# Solution 1
# ages = ages.select do |_,age|
#           age < 100
# end

# p ages

# Solution 2

ages.delete_if {|_,age| age > 100}

p ages