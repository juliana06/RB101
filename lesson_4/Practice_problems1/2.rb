# How does count trat the block's return value? How can we find out?

['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# Per documentation: "if a block is given, counts the number of elements for which the block returns a
# true value". Therefore, in this case, count will count the number of elements for which length < 4
# returns true (count considers the truthiness of the block's return value)

# answer: 2