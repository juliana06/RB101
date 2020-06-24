# How does take work? Is it destructive? How can we find out?

arr = [1,2,3,4,5]
p arr.take(2)

# as per documentation: returns the first n elements from the array (returns a new array)
# we can find out if it's destructive by testing in irb --> is this the only/best way?

# after testing in irb - it's not destructive

# this example will return [1,2]