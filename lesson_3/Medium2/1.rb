def fun_with_ids
  a_outer = 42 #42
  b_outer = "forty two" #"forty two"
  c_outer = [42] #[42]
  d_outer = c_outer[0] #42

  a_outer_id = a_outer.object_id #85
  b_outer_id = b_outer.object_id #70263190990720
  c_outer_id = c_outer.object_id #70263182121720
  d_outer_id = d_outer.object_id #85

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} before the block" #42 / 85 - CORRECT
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} before the block" #"forty two" / 70263190990720 - CORRECT (different ID number)
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} before the block" #[42] / 70263182121720 - CORRECT (different ID number)
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} before the block" #42 / 85 - CORRECT
  puts

  1.times do 
    a_outer_inner_id = a_outer.object_id #85
    b_outer_inner_id = b_outer.object_id #70263190990720
    c_outer_inner_id = c_outer.object_id #70263182121720
    d_outer_inner_id = d_outer.object_id #85

    puts "a_outer id was #{a_outer_id} before the block and is #{a_outer_inner_id} inside the block." #85 / 85 - CORRECT
    puts "b_outer id was #{b_outer_id} before the block and is #{b_outer_inner_id} inside the block." #70263190990720 / 70263190990720 - CORRECT (different ID number)
    puts "c_outer id was #{c_outer_id} before the block and is #{c_outer_inner_id} inside the block." #70263182121720 / 70263182121720 - CORRECT (different ID number)
    puts "d_outer id was #{d_outer_id} before the block and is #{d_outer_inner_id} inside the block." # 85 / 85 - CORRECT
    puts

    a_outer = 22 # 22 => id: 45
    b_outer = "thirty three" #"thirty three" => id: 70263203191200
    c_outer = [44] #[44] => id: 70263203184860
    d_outer = c_outer[0] #44 => id: 89

    puts "a_outer inside after reassignment is #{a_outer} with an id of: #{a_outer_id} before and: #{a_outer.object_id} after." #22 / 85 / 45 - CORRECT
    puts "b_outer inside after reassignment is #{b_outer} with an id of: #{b_outer_id} before and: #{b_outer.object_id} after." #"thirty three" / 70263190990720 / 70263203191200 - CORRECT (different ID number)
    puts "c_outer inside after reassignment is #{c_outer} with an id of: #{c_outer_id} before and: #{c_outer.object_id} after." #[44] / 7026318212172 / 70263203184860 - CORRECT (different ID number)
    puts "d_outer inside after reassignment is #{d_outer} with an id of: #{d_outer_id} before and: #{d_outer.object_id} after." #44 / 85 / 89 - CORRECT
    puts

    a_inner = a_outer #22
    b_inner = b_outer #"thirty three"
    c_inner = c_outer #[44]
    d_inner = c_inner[0] #44

    a_inner_id = a_inner.object_id #45
    b_inner_id = b_inner.object_id #70263203191200
    c_inner_id = c_inner.object_id #70263203184860
    d_inner_id = d_inner.object_id #89

    puts "a_inner is #{a_inner} with an id of: #{a_inner_id} inside the block (compared to #{a_outer.object_id} for outer)." #22 / 45 / 45 - CORRECT
    puts "b_inner is #{b_inner} with an id of: #{b_inner_id} inside the block (compared to #{b_outer.object_id} for outer)." #"thirty three" / 70263203191200 / 70263203191200 - CORRECT (different ID number)
    puts "c_inner is #{c_inner} with an id of: #{c_inner_id} inside the block (compared to #{c_outer.object_id} for outer)." #[44] / 70263203184860 / 70263203184860 - CORRECT (different ID number)
    puts "d_inner is #{d_inner} with an id of: #{d_inner_id} inside the block (compared to #{d_outer.object_id} for outer)." #44 / 89 / 89 - CORRECT
    puts
  end

  puts "a_outer is #{a_outer} with an id of: #{a_outer_id} BEFORE and: #{a_outer.object_id} AFTER the block." # 22 / 85 / 45
  puts "b_outer is #{b_outer} with an id of: #{b_outer_id} BEFORE and: #{b_outer.object_id} AFTER the block." # "thirty three" / 70263190990720 / 70263203191200
  puts "c_outer is #{c_outer} with an id of: #{c_outer_id} BEFORE and: #{c_outer.object_id} AFTER the block." # [44] / 70263182121720 / 70263203184860
  puts "d_outer is #{d_outer} with an id of: #{d_outer_id} BEFORE and: #{d_outer.object_id} AFTER the block." # 44 / 85 / 89
  puts

  puts "a_inner is #{a_inner} with an id of: #{a_inner_id} INSIDE and: #{a_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #ugh ohhhhh (can't access inner variable)
  puts "b_inner is #{b_inner} with an id of: #{b_inner_id} INSIDE and: #{b_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #ugh ohhhhh (can't access inner variable)
  puts "c_inner is #{c_inner} with an id of: #{c_inner_id} INSIDE and: #{c_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #ugh ohhhhh (can't access inner variable)
  puts "d_inner is #{d_inner} with an id of: #{d_inner_id} INSIDE and: #{d_inner.object_id} AFTER the block." rescue puts "ugh ohhhhh" #ugh ohhhhh (can't access inner variable)
end


fun_with_ids

# local variables {a..d}_outer were reassigned inside the block. That is why is has new values
# after the block (blocks can reassign variables)

# "a_outer is 42 with an id of: 85 before the block"
# "b_outer is forty two" with an id of: 70263190990720 before the block"
# "c_outer is [42] with an id of: 70263182121720 before the block"
# "d_outer is 42 with an id of: 85 before the block"

# "a_outer id was 85 before the block and is 85 inside the block."
# "b_outer id was 70263190990720 before the block and is 70263190990720 inside the block."
# "c_outer id was 70263182121720 before the block and is 70263182121720 inside the block."
# "d_outer id was 85 before the block and is 85 inside the block."

# "a_outer inside after reassignment is 22 with an id of: 85 before and: 45 after."
# "b_outer inside after reassignment is "thirty three" with an id of: 70263190990720 before and: 70263203191200 after." 
# "c_outer inside after reassignment is [44] with an id of: 7026318212172 before and: 70263203184860 after."
# "d_outer inside after reassignment is 44 with an id of: 85 before and: 89 after." 

# "a_inner is 22 with an id of: 45 inside the block (compared to 45 for outer)."
# "b_inner is "thirty three" with an id of: 70263203191200 inside the block (compared to 70263203191200 for outer)." 
# "c_inner is [44] with an id of: 70263203184860 inside the block (compared to 70263203184860 for outer)."
# "d_inner is 44 with an id of: 89 inside the block (compared to 89 for outer)."

# "a_outer is 22 with an id of: 85 BEFORE and: 45 AFTER the block."
# "b_outer is "thirty three" with an id of: 70263190990720 BEFORE and: 70263203191200 AFTER the block."
# "c_outer is [44] with an id of: 70263182121720 BEFORE and: 70263203184860 AFTER the block." 
# "d_outer is 44 with an id of: 85 BEFORE and: 89 AFTER the block."

#ugh ohhhhh (can't access inner variable)
#ugh ohhhhh (can't access inner variable)
#ugh ohhhhh (can't access inner variable)
#ugh ohhhhh (can't access inner variable)
