numbers = [1,2,3,4]
numbers.each do |number|
  p number
  numbers.shift(1)
end


# iteration 1 - prints 1; removes 1 from array
# iteration 2 - prints 3; removes 3 from array (it thinks it removed the first element, hence it's 
# working with second element, which is 3, after we shifter the array)


numbers = [1,2,3,4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

p numbers

# iteration 1 - prints 1; removes 4 from array
# iteration 2 - prints 2; removes 3 from array