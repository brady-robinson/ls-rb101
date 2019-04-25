def balanced?(string)
  string_array = string.chars
  count = 0
  string_array.each do |char|
    count += 1 if char == "("
    count -= 1 if char == ")"
    break if count < 0
  end

  count.zero?
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false