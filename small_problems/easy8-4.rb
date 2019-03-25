def substrings(string)
  array = []
  current_element = ''
  count = 0
  count_2 = 0
  string_new = ''
  loop do
    break if count_2 >= string.size
    string_new = string[count_2..-1]
    count = 0

    loop do 
      break if count >= string_new.size
      current_element = string_new[0..count]
      array << current_element
      count += 1
    end

    count_2 += 1

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