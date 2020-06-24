# Input: string
# Output: titleize string

# Rules
# Explicit requirements:
# - return the string with first letter of each word capitalized

# Algorithm
# - convert string into array, each word one element
# - capitalize the first letter of each word

words = 'the flintstones rock'

def titleize(title)
  separated_words = title.split

  separated_words.each do |word|
  word.capitalize!
  end

  separated_words.join(" ")
end

p titleize(words)