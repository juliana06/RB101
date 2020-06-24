# What is the block's return value in the following code? How is it determined?
# Also, what is the return value of any? in this code and what does it output?

[1,2,3].any? do |num|
  puts num
  num.odd?
end

# per documentation: "the method returns true if the block ever returns a value other than false or nil"

# the block's return value will be true on the first and last iterations and false on the second iteration
# this happens because the block's last executed line is 'num.odd?' which will return true for 1 and 3 
# and false for 2.
# return value of any will be true ('method returns true if the block ever returns a value other than
# false or nil').
# code will output 1, 2 and 3 (in different lines) and will return true (as per above)


# question: does any? short circuit? if so, then the method would stop in the first iteration as the
# block returned true there.

# ** AFTER RUNNING IN IRB **
# it turns out that any? does short circuit and so the method stops iterating after the first
# 'true' return.
# so at the end it just outputs 1 and returns true (no need to iterate through the whole collection
# as the method already knows it will return true)