# Input: hash
# Output: integer

# Rules
# Explicit requirements
#   - add all values from the hash

# Algorithm
# - initialize variable total_age and assign to:
#   - extract all ages using Hash#values (should return an array with all values)
#   - sum all ages by chaining Array#sum

ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

total_age = ages.values.sum

p total_age
