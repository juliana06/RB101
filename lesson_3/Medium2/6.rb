# def color_valid(color)
#   if color == "blue" || color == "green"
#     true
#   else
#     false
#   end
# end

# def color_valid(color)
#   ["blue","green"].include?(color)
# end

def color_valid(color)
  color == "blue" || color == "green"
end

p color_valid("blue")