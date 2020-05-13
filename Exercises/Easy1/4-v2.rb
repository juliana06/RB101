def count_occurrences(input)
  occurrences = {}

  input.uniq.each do |vehicle|
    occurrences[vehicle] = input.count(vehicle)
  end

  occurrences.each do |vehicle, count|
    puts "#{vehicle} => #{count}"
  end
end

vehicles = ["car", "car", "truck", "car", "SUV", "truck",
            "motorcycle", "motorcycle", "car", "truck"]

count_occurrences(vehicles)