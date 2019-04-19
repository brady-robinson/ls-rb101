def crunch(string)
  crunched_string = ''
  array = string.chars

  array.each_with_index do |char, index|
    crunched_string << char unless char == array[index + 1]
  end

  crunched_string
end 


p crunch('ddaaiillyy ddoouubbllee') #== 'daily double'
p crunch('4444abcabccba') #== '4abcabcba'
p crunch('ggggggggggggggg') #== 'g'
p crunch('a') #== 'a'
p crunch('') #== ''