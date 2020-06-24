# Input: true/false sample
# Output: Given string ("The loop was processed!" or "The loop wasn't processed!")

# Rules
# - Explicit requirements
#   - Run a loop
#   - use if/else statement to decide the output
#   - Loop should run one time

# Algorithm
# - initialize given variable: process_the_loop = [true, false].sample
# - if process_the_loop equals to true, 
# - start a loop
# - print "The loop was processed!"
# - break out of the loop
# - else print "The loop wasn't processed!"

process_the_loop = [true, false].sample

if process_the_loop
  loop do
    puts "The loop was processed!"
    break
  end
else
  puts "The loop wasn't processed!"
end