# Wrong...
# Still don't understand the problem...
def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  if dot_separated_words <= 3 || dot_separated_words >= 5
    return false
  else
    while dot_separated_words > 0 do
      word = dot_separated_words.pop
      break unless is_an_ip_number?(word)
    end
  end
  return true
end