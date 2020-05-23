# A

def mess_with_vars(one, two, three)
  one = two
  two = three
  three = one
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" # one is one
puts "two is: #{two}" # two is two
puts "three is: #{three}" #three is three

# the reassignment inside the method is performed in a copy of the object passed
# Re-assigning the object within the method doesn't affect the object outside the method

#B

def mess_with_vars(one, two, three)
  one = "two"
  two = "three"
  three = "one"
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is #{one}" # one is one
puts "two is #{two}" # two is two
puts "three is #{three}" #three is three

# The variables being reassigned within the method definition are the method's parameters
# the variables defined outside of the method definition are not affected as in cases like this
# Ruby is "pass by value", meaning, it only passes a copy of the original object
# and the assignment is performed in that copy (not on the original object)


# C

def mess_with_vars(one, two, three)
  one.gsub!("one", "two")
  two.gsub!("two", "three")
  three.gsub!("three", "one")
end

one = "one"
two = "two"
three = "three"

mess_with_vars(one, two, three)

puts "one is: #{one}" #one is: two
puts "two is: #{two}" #two is: three
puts "three is: #{three}" #three is: one

# String#gsub! is a destructive method and so is performed on the original object
# in this case Ruby is passing by reference (reference to the original object)
# and the change is performed on the original object
# In Ruby when an operation within a method mutates the caller, it will affect the original object


# In Summary:
# Re-assignment within a method does NOT affect the original object (pass by value - passes a copy of the original)
# When an operation mutates the caller within a method, it WILL affect the original object (pass by reference - reference to the original object)
