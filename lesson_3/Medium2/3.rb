def tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
tricky_method(my_string,my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#The string will be "pumpkinrutabaga" - WRONG
#That is because the variable is re-assigned (modifies the original object) - WRONG

#The string will be "pumpkin"
#That is because we pass the value of my string and assignment is NON-MUTATING (it binds to a new object)
#So inside the method a_string_param gets the value of my_string and then re-assigned to "+= 'rutabaga'".
#But that does not mutate the original my_string
#The String#+= operation is re-assignment and creates a new String object. 


#The array will be ["pumpkin", "rutabaga"]
#That is because << is a destructive method (modifies the caller) and so it changes
#the original object