# limit = 15

# def fib(first_num, second_num)
#   while first_num + second_num < limit
#     sum = first_num + second_num
#     first_num = second_num
#     second_num = sum
#   end
#   sum
# end

# result = fib(0,1)
# puts "result is #{result}"

# The variable limit is outside of the method definition and is also not
# used in the method's definition (as a parameter). So the method cannot use it.

# Fix:

def fib(first_num, second_num, limit=15)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0,1)
puts "result is #{result}"