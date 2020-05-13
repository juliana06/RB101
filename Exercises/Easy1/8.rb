# def average(input)
#   input.sum / input.size
# end

# puts average([1,5,87,45,8,8]) == 25
# puts average([9,47,23,95,16,52]) == 40

#Further exploration
def average(input)
  input.sum / input.size.to_f
end

puts average([1,5,87,45,8,8])
puts average([9,47,23,95,16,52])