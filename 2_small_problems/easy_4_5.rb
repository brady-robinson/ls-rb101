def multisum(integer)
  array = []
  1.upto(integer) { |num| array << num if num % 3 == 0 || num %  5 == 0 }

  array.reduce(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168