# What will each of the below lines print?

# require 'date'
# 1 - puts Date.new
# 2 - puts Date.new(2016)
# 3 - puts Date.new(2016, 5)
# 4 - puts Date.new(2016, 5, 13)

# MY ANSWERS:
# Date.new creates a date object denoting the given calendar date
# 1 - 2020-04-06 --> no arguments given - today's date - WRONG
# 2 - 2016-01-01 --> only year given - first day of the given year --> month and day default
# 3 - 2016-05-01 --> year and month given - first day of the given month --> day default
# 4 - 2016-05-03 --> year, month and date given --> nothing default

# RESULTS
# 1 - -4712-01-01 --> default date
# 2 - answer is correct
# 3 - answer is correct
# 4 - answer is correct


