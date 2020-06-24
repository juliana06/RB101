# Input: numbers 1 to 5
# Output: number and whether it's even or odd

# Rules
#  - Explict Requirements
#   - Print the number
#   - Print whether the number is even or odd
#   - use a loop 

# Algorithm:
#   - start a counter outside the loop
#   - initialize the loop
#   - if number is odd interporlate counter with "is odd!"
#   - if number is not odd (else) interpolate counter with "is even!"
#   - increment counter by 1
#   - break out of the loop if counter is greater than 5

count = 1

loop do
  if count.odd?
    puts "#{count} is odd!"
  else
    puts "#{count} is even!"
  end
  count += 1
  break if count > 5
end

# loop do
#   puts "#{count} is odd!" if count.odd?
#   puts "#{count} is even!" if count.even?
#   count += 1
#   break if count > 5
# end