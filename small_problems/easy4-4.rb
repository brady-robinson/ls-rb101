def multiples_of_three_five(integer)
  (1..integer).select do |num|
    num % 3 == 0 || num % 5 == 0
  end
end

def multisum(integer)
  multiples_of_three_five(integer).reduce(:+)
end

puts multisum(3) == 3
puts multisum(5) == 8
puts multisum(10) == 33
puts multisum(1000) == 234168