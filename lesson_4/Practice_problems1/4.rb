['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# {'a'=>'ant', 'b'=>'bear', 'c'=>'cat'}

# the method will iterate over the given array and return the hash that was passed in as an argument
# in each iteration the block is taking the index 0 of the passed string as the hash's key
# and assigning that key to the full string as the value