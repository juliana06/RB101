{a: 'ant', b: 'bear'}.map do |key, value|
  if value.size > 3
    value
  end
end

# Enumerable#map - returns a new array with the results of running the clock once for every element

# in this case the block will return the hash's value if its size > 3, or nil if < 3.

# [false, 'bear'] - wrong
# correct answer: [nil, 'bear']
# * when none of the conditions in an if statement evaluates as true, the if statement itself returns 
# nil *