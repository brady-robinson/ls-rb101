def reverse!(array)
  stopper = array.size / 2
  count_beg = 0
  count_end = -1

  until count_beg >= stopper
    array[count_beg], array[count_end] = array[count_end], array[count_beg]
    count_beg += 1
    count_end -= 1
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