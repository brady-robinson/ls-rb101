def short_long_short (string1, string2)
  arr = []
  arr << string1
  arr << string2
  arr2 = arr.sort_by {|a| a.length }
  "#{arr2[0] + arr2[1] + arr2[0]}"
end

puts short_long_short('abc', 'defgh') == "abcdefghabc"
puts short_long_short('abcde', 'fgh') == "fghabcdefgh"
puts short_long_short('', 'xyz') == "xyz"