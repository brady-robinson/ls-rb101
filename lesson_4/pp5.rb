#problem: find index of first string that starts with 'Be'
#data structureL array
#algorithm:
# - initialzie a counter variable
# - start a loop
#    - set current item to a variable
#    - if index zero of this item is B
#      and index one of this item is e
#       - break
#    - else 
#       - next
# - return current item


flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)

puts flintstones.index { |name| name[0,2] == 'Be' }
