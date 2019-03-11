# problem: incrememt the values of hashes indexed in an array
# data: hash, array
# alg:
# method call map
#  in the block call each_value
#    in the block incrememt each value by one

[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].map do |element|
  incremented_hash = {}
  element.each do |key, value|
    incremented_hash[key] = value + 1
  end
  incremented_hash
end
