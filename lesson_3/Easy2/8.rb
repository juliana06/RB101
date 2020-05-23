advice = "Few things in life are as important as house training your pet dinosaur."

advice.slice!(0, (advice.index /house/))

p advice

# Bonus

# advice = "Few things in life are as important as house training your pet dinosaur."

# p advice.slice(0, (advice.index /house/))

# p advice

# with String#slice the matching portion of the string is returned
# with String#slice! the deleted part of the string is returned