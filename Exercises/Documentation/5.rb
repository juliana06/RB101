# What do each of these puts statements output?

# a = %w(a b c d e)
# 1 - puts a.fetch(7)
# 2 - puts a.fetch(7, 'beats me')
# 3 - puts a.fetch(7) { |index| index**2 }

# 1 - IndexError - there is no 7th element in the index and no default value is provided
# 2 - "beats me" - it will print "beats me" as it was the default value passed
#  (passed as the second argument) because it didn't find the 7th element. will return nil
# 3 - 49 - since the index is invalid, the block will be executed
# the block executes 7 to the second power = 49 and that will be printed. returns nil

