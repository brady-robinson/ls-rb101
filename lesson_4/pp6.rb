# problem: change array so that all elements are shortened to first
#          three characters
# data structure: array
# algorithm: 
# - use map
# - in the block, for each item
#   - reassign the item to the first three indices of string
# - puts array

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

flintstones.map! {|value| value[0,3]}

puts flintstones