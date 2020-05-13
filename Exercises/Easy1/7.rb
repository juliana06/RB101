#First answer
# def stringy(input)
#   string = ""
#   if input.even?
#     while input != 0
#       if input.even? 
#         string << "1"
#       else
#         string << "0"
#       end
#       input -=1
#     end
#   else
#     while input != 0
#       if input.odd? 
#         string << "1"
#       else
#         string << "0"
#       end
#       input -=1
#     end
#   end
#   string
# end

# Second answer
# def stringy(input)
#   string = ""

#   input.times do |i|
#     i.odd? ? string << "0" : string << "1"
#   end

#   string
# end

# Further exploration
def stringy(input, opt=1)
  string = ""
  if opt == 0
    input.times do |i|
      i.odd? ? string << "1" : string << "0"
    end
  else
    input.times do |i|
      i.odd? ? string << "0" : string << "1"
    end
  end
puts string

end

stringy(6, 0)
stringy(6)

# puts stringy(6) == "101010"
# puts stringy(9) == "101010101"
# puts stringy(4) == "1010"
# puts stringy(7) == "1010101"
