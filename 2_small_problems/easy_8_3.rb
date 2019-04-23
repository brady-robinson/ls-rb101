def substrings_at_start(string)
  array = []
  0.upto(string.size - 1) do |count|
    array << string[0..count]
  end
  array
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']