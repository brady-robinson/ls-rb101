# problem: add another value on the hash that is age group, 
#          which is dependent on age
# data struct: hash
# algorithm:
# - make an array of values
# - the array will contain hashes as elements
# - initialize counter
# - make a loop
#   - break if counter == array size
#   - make current element = array[counter]
#   - the current element is a hash
#   - run the current element through conditionals to determine
#     what happens depending on the value of age
#   - incrememnt the counter

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

array = munsters.values
count = 0

loop do 
  current_hash = array[count]
  if current_hash['age'] <= 17
    current_hash['age_group'] = 'kid'
  elsif current_hash['age'] >= 18 && current_hash['age'] <= 64
    current_hash['age_group'] = 'adult'
  else
    current_hash['age_group'] = 'senior'
  end
  count += 1
  break if count == array.size
end

count2 = 0
munsters.map do |key, value|
  key = array[count2]
  count2 += 1
end

p munsters


