def letter_percentages(string)
  array = string.chars
  uppercase_array = []
  lowercase_array = []
  neither_array = []
  hash = {}

  array.each do |letter|
    if letter =~ /[A-Z]/
      uppercase_array << letter
    elsif letter =~ /[a-z]/
      lowercase_array << letter
    else
      neither_array << letter
    end
  end

  hash[:uppercase] = (uppercase_array.size.to_f / array.size.to_f) * 100
  hash[:lowercase] = (lowercase_array.size.to_f / array.size.to_f) * 100
  hash[:neither] = (neither_array.size.to_f / array.size.to_f) * 100

  hash
end

p letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
p letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
