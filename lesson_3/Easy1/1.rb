# What will this code print?

numbers = [1,2,2,3]
numbers.uniq

puts numbers

# It should print [1,2,2,3] because the call to uniq did not mutate the caller 
# So the variable numbers has not changed

# It printed the original array as expected, BUT NOT as an array.
# Printed each element of the array in a different line --> that's because the puts method
# automatically calls to_s on its arguments.