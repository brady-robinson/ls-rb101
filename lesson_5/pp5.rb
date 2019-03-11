# problem: given a hash whose keys have hash values, select
          # males and add their ages
# data: hash
# alg:
# use mthod call map to make a new array
# if male, return age to be saved in a new hash
# reduce the new hash with addition

munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

total_male_age = 0

munsters.each_value do |hash|
  total_male_age += hash['age'] if hash['gender'] == 'male'
end

puts total_male_age