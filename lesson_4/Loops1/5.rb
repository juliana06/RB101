say_hello = true
counter = 1

while say_hello
  puts 'Hello!'
  counter += 1
  say_hello = false if counter > 5
end

# loop do
#   puts 'Hello!'
#   counter += 1
#   break if counter > 5
# end