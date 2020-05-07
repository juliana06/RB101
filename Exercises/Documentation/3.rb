# def my_method(a, b = 2, c = 3, d)
#   p [a, b, c, d]
# end

# my_method(4, 5, 6)

# What will the above method print?

# From Ruby docs: " Ruby fills in the missing arguments from left to right."

# it will print [4, 5, 3, 6]
# 4 is assigned to a and 6 to d. Then 5 is assigned to b and c stays default.

# From LS web site: "positional arguments are filled out first, 
# then the default arguments are set with any values supplied, 
# and, finally, default values are applied to anything remaining"