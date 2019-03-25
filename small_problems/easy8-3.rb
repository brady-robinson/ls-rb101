def substrings_at_start(string)
  array = []
  current_element = ''
  count = 0
  loop do 
    break if count == string.size
    current_element = string[0..count]
    array << current_element
    count += 1
  end
  array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']