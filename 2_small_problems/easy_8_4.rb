def substrings(string)
  array = []
  count = 0
  loop do 
    break if count == string.size
    count.upto(string.size - 1) do |num|
      array << string[count..num]
    end
    count += 1
  end
  array
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde', 
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]