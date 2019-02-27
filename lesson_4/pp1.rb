# problem: turn into hash where names are keys 
#          and values are indexes in array
# data structure: hash, array
# algorithm:
# - use each_with_object to iterate over the array
# - in the block, use the name as the key, and the index as the value

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]

new_hash = flintstones.each_with_object({}) do |value, hash|
  hash[value] = flintstones.index(value)
end

p new_hash