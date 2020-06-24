[1,2,3].reject do |num|
  puts num
end

# Reject - returns a NEW array containing the items in self for which the given block is NOT true.

# answer: [1,2,3]
# puts always returns 'nil', which is falsey. Hence, the block will return false after each iteration
# and none of the elements in self will be rejected