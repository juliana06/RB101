def stringy(num)
  stringy = ""
  num.times do |digit|
    digit.odd? ? stringy << "0" : stringy << "1"
  end
  stringy
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'