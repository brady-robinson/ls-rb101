def short_long_short(string_1, string_2)
  array = []
  array << string_1 << string_2
  array.sort_by! {|item| item.size }

  array[0] + array[1] + array[0]
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"