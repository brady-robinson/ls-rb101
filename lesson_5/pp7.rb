# problem: use each to output the vowels from the values
# data structure: hash, array
# alg:
# - call each on the outer hash 
# - call each_char on the values to print the vowels

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |key, value|
  value.each do |string|
    string.each_char do |character|
      puts character if ['a', 'e', 'i', 'o', 'u'].include?(character)
    end
  end
end