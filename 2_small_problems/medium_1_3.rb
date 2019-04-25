def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(num, size)
  num_array = num.to_s.chars
  return num if size == 1
  num_array[-size..-1] = rotate_array(num_array[-size..-1])
  num_array.join.to_i
end

def max_rotation(num)
  num_array = num.to_s.chars
  counter = num_array.size
  counter.downto(2) do |number|
    num = rotate_rightmost_digits(num, number)
  end
  num
end

p max_rotation(735291) #== 321579
p max_rotation(3) #== 3
p max_rotation(35) #== 53
p max_rotation(105) #== 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) #== 7_321_609_845
