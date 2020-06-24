[1,2,3].map do |num|
  if num > 1
    puts num
  else
    num
  end
end

# [1, nil, nil]

# puts always return nil. Here, when the if statment evaluates to true, we put the number, so the
# return value into the map method in that iteration is nil