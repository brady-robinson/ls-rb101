def swap(string)
  array = string.split
  count = 0
  current_element = ''
  first_letter = ''
  last_letter = ''
  new_array = []
  loop do
    break if count >= array.size
    current_element = array[count]
    first_letter = current_element[0]
    last_letter = current_element[-1]
    current_element[0] = last_letter
    current_element[-1] = first_letter
    new_array << current_element
    count += 1
  end
  new_array.join(' ')
end

puts swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
puts swap('Abcde') == 'ebcdA'
puts swap('a') == 'a'