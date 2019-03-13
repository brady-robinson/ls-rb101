# problem: return array of hashes that have all even numbers in value array
# data: hash, array
# alg:
# - call method select_by
# - call method values on the hash
# - in the block call method all? on the second index of array

arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

new_array = arr.select do |hash|
              hash.all? do |_, value|
                value.all? do |num|
                  num.even?
                end
              end
          end

p new_array