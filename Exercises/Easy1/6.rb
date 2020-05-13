def reverse_words(input)
  array_input = input.split

  array_input.each do |word|
    if word.length >= 5
      word.reverse!
    end
  end

  array_input.join(" ")

end

puts reverse_words("Professional")
puts reverse_words("Walk around the block")
puts reverse_words("Launch School")