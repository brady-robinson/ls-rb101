def reverse!(array)
  stopper = array.size / 2
  count = 0
  count_2 = -1

  loop do 
    break if count >= stopper
    array[count], array[count_2] = array[count_2], array[count]
    count += 1
    count_2 -= 1
  end

  array
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1]
p list == [4, 3, 2, 1]
p list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
p list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
p list == ["abc"]

list = []
reverse!(list) == []
p list == []