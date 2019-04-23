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

def palindrome(string)
  if string.size > 1
    string.reverse == string
  else
    false
  end
end

def palindromes(string)
  new_array = []
  substrings(string).each do |substring|
    new_array << substring if palindrome(substring)
  end
  new_array
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
