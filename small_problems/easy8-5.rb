def palindromes(string)
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
      if current_element.size > 1 && current_element == current_element.reverse
        array << current_element
      end
      count += 1
    end

    count_2 += 1

  end
  array
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
   'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
   'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
   '-madam-', 'madam', 'ada', 'oo'
 ]
p palindromes('knitting cassettes') == [
   'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
 ]