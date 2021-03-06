def sequence(size, start)
  multiplier = 1
  array = []
  loop do 
    break if size == array.size
    current_element = start * multiplier
    array << current_element
    multiplier += 1
  end
  array
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []