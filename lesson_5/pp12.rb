# problem: return a hash on each iteration where the key
# is the first element of each sub array and the value
# is the second item
# data: array, hash
# alg: 
# - initialize an empty hash
# - initialize a counter variable
# - start a loop 
# - in the outer loop iteratie through each item in the outer hash
# - start another loop 
# - in the inner loop 
# - add the two items in the current array element to the hash

arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hsh = {}

arr.each do |item|
  hsh[item[0]] = item[1]
end

p hsh