# Input: array
# Output: modified array

# Rules:
# Explicit requirements
#   - modify existing array
#   - show only 3 first letters of names in array

# Algorithm 
#   - iterate through the array
#   - modify each element so only the first 3 letters are left (map!)

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! do |name|
  name[0,3]
end

p flintstones