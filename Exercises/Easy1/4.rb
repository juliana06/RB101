#My Answer
# def count_occurances(array)
#   unique_values = array.uniq.to_h {|vehicle| [vehicle, 0]}
#   array.each do |vehicle|
#     if unique_values.has_key?(vehicle)
#       unique_values[vehicle] += 1
#     end
#   end
#   unique_values.each do |element, count|
#     puts "#{element} => #{count}"
#   end
# end

# Case insensitive

def count_occurances(array)
  uniq_values = {}

  downcase_array = array.map(&:downcase)

  downcase_array.uniq.each do |vehicle|
    uniq_values[vehicle] = downcase_array.count(vehicle)
  end

  uniq_values.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

vehicles = [
  "car", "car", "truck", "car", "SUV", "truck",
  "motorcycle", "motorcycle", "car", "truck"
]

count_occurances(vehicles)