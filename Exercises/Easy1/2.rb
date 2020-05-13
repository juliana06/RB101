# def is_odd?(integer)
#   integer % 2 != 0
# end

# puts is_odd?(7)

# Further exploration

def is_odd1?(integer)
  integer.remainder(2) != 0
end

puts is_odd1?(2)
puts is_odd1?(5)
puts is_odd1?(-17)
puts is_odd1?(-8)
puts is_odd1?(0)
puts is_odd1?(7)