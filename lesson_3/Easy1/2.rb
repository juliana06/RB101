# Describe the difference between ! and ? in Ruby

# ! is a naming convention used to express that the method is "dangerous"
# ! can be used to indicate the method will mutate the caller
# ! is also use to negate something (does not equal to) !=

# ? is used after methods to return true/false

# 1- what is != and where should you use it
# != means "does not equal to". You can use it when testing for inequality

# 2- put ! before something, like !user_name
# forces the variable into a boolean value
# if user_name was truthy, it will now return false

# 3- put ! after something, like words.uniq!
# that usually indicates that me method is destructive (mutates the caller)

# 4- put ? before something
# ??

# 5- put ? after something
# Expect the method to return true/false

# 6- put !! before something, like !!user_name
# forces the variable into a boolean contex and return the true/false value of the
# argument
# if user_name was truthy, !user_name will force it into a boolean context but will
# return false. !!user_name will not only force into a boolean format,
# but also return true, returning the boolean value of the argument

