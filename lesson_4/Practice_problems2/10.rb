# Input: hash
# Output: hash with addisional pair

# Rules
# Explicit requirements
#   - add a pair with age_group for each member of the family
#   - 0-17: kid, 18-64: adult, 65+: senior
#   modify original hash

# Algorithm
#   - Iterate through the hash and fetch the value for the age key
#   - if that value =< 17 --> age_group = kid
#   - if that value > 17 && =< 64 --> age_group = adult
#   - if that value >= 65 --> age_group = senior

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

# munsters.each_pair do |member, info|
#   if info["age"] <= 17
#     info["age_group"] = "kid"
#   elsif info["age"] >= 65
#     info["age_group"] = "senior"
#   else
#     info["age_group"] = "adult"
#   end
# end


munsters.each_pair do |member, info|
  case info["age"]
  when 0...18
    info["age_group"] = "kid"
  when 18...65
    info["age_group"] = "senior"
  else
    info["age_group"] = "adult"
  end
end

p munsters
