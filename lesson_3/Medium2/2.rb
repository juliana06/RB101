def fun_with_ids
  a_outer = 42 #42
  b_outer = "forty two" #"forty two"
  c_outer = [42] #[42]
  d_outer = c_outer[0] #42

  a_outer_id = a_outer.object_id #85
  b_outer_id = b_outer.object_id #70152695796200
  c_outer_id = c_outer.object_id #70152687721820
  d_outer_id = d_outer.object_id #85

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block." #42 / 85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block." #"forty two" / 70152695796200
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block." #[42] / 70152687721820
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block." #42 / 85
  puts

  an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id, d_outer_id)

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the method call." #42/ 85 / 85
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the method call." #"forty two" / 70152695796200 / 70152695796200
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the method call." #[42] / 70152687721820 / 70152687721820
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the method call." #42 / 85 / 85
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the melhod." rescue puts "ugh ohhhhh"
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the melhod." rescue puts "ugh ohhhhh"
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the melhod." rescue puts "ugh ohhhhh"
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the melhod." rescue puts "ugh ohhhhh"
  puts
end

def an_illustrative_method(a_outer, b_outer, c_outer, d_outer, a_outer_id, b_outer_id, c_outer_id,d_outer_id)

  puts "a_outer id was #{a_outer_id} before the mehod and is #{a_outer.object_id} inside the method." #85 / 85
  puts "b_outer id was #{b_outer_id} before the mehod and is #{b_outer.object_id} inside the method." #70152695796200 / 70152695796200
  puts "c_outer id was #{c_outer_id} before the mehod and is #{c_outer.object_id} inside the method." #70152687721820 / 70152687721820
  puts "d_outer id was #{d_outer_id} before the mehod and is #{d_outer.object_id} inside the method." #85 / 85
  puts

  a_outer = 22
  b_outer = "thirty three"
  c_outer = [44]
  d_outer = c_outer[0]

  puts "a_outer inside after reassignment is #{a_outer} with and id of: #{a_outer_id} before and: #{a_outer.object_id} after." #22 / 85 / 45
  puts "b_outer inside after reassignment is #{b_outer} with and id of: #{b_outer_id} before and: #{b_outer.object_id} after." #"thirty three" / 70152695796200 / 70152687819940
  puts "c_outer inside after reassignment is #{c_outer} with and id of: #{c_outer_id} before and: #{c_outer.object_id} after." #[44] / 70152687721820 / 70152687814140
  puts "d_outer inside after reassignment is #{d_outer} with and id of: #{d_outer_id} before and: #{d_outer.object_id} after." #44 / 85 / 89
  puts

  a_inner = a_outer
  b_inner = b_outer
  c_inner = c_outer
  d_inner = c_inner[0]

  a_inner_id = a_inner.object_id
  b_inner_id = b_inner.object_id
  c_inner_id = c_inner.object_id
  d_inner_id = d_inner.object_id

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the melhod (compared to #{a_outer.object_id} for outer)." #22 / 45 / 45
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the melhod (compared to #{b_outer.object_id} for outer)." #"thirty three" / 70152687819940 / 70152687819940
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the melhod (compared to #{c_outer.object_id} for outer)." #[44] / 70152687814140 / 70152687814140
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the melhod (compared to #{d_outer.object_id} for outer)." #44 / 89 / 89
  puts
end

fun_with_ids

#ALL answers were correct

# "a_outer is 42 with an id of: 85 before the block."
# "b_outer is "forty two" with an id of: 70152695796200 before the block."
# "c_outer is [42] with an id of: 70152687721820 before the block."
# "d_outer is 42 with an id of: 85 before the block."

# "a_outer id was 85 before the mehod and is 85 inside the method."
# "b_outer id was 70152695796200 before the mehod and is 70152695796200 inside the method."
# "c_outer id was 70152687721820 before the mehod and is 70152687721820 inside the method."
# "d_outer id was 85 before the mehod and is 85 inside the method."

# "a_outer inside after reassignment is 22 with and id of: 85 before and: 45 after."
# "b_outer inside after reassignment is "thirty three" with and id of: 70152695796200 before and: 70152687819940 after."
# "c_outer inside after reassignment is [44] with and id of: 70152687721820 before and: 70152687814140 after."
# "d_outer inside after reassignment is 44 with and id of: 85 before and: 89 after."

# "a_inner is 22 with an id of: 45 inside the melhod (compared to 45 for outer)." 
# "b_inner is "thirty three" with an id of: 70152687819940 inside the melhod (compared to 70152687819940 for outer)."
# "c_inner is [44] with an id of: 70152687814140 inside the melhod (compared to 70152687814140 for outer)."
# "d_inner is 44 with an id of: 89 inside the melhod (compared to 89 for outer)."

#reason why {a..d}_outer are the same AFTER the method call: (below output)
#This is because our method call accepts VALUES as parameters. The names we give to those values
#in the definition of our method are SEPARATE from any other use of those same names.
#The method gets the VALUES of the parameters we pass, but the parameter variables inside the method 
#have no other relationship to those outside of the method. The names were coincidental, 
#and confusing in a useful way.

# "a_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call."
# "b_outer is "forty two" with an id of: 70152695796200 BEFORE and: 70152695796200 AFTER the method call."
# "c_outer is [42] with an id of: 70152687721820 BEFORE and: 70152687721820 AFTER the method call."
# "d_outer is 42 with an id of: 85 BEFORE and: 85 AFTER the method call."

# ugh ohhhhh
# ugh ohhhhh
# ugh ohhhhh
# ugh ohhhhh