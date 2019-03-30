def rotate_array(array)
  array[1..-1] + [array[0]]
end

def rotate_rightmost_digits(integer, n)
  array = integer.to_s.chars
  array[-n..-1] = rotate_array(array[-n..-1])
  array.join.to_i
end

def max_rotation(integer)
  size_for_rotation = integer.to_s.size
  loop do 
    break if size_for_rotation <= 1
    integer = rotate_rightmost_digits(integer, size_for_rotation)
    size_for_rotation -= 1
  end
  integer
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
