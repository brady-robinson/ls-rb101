def balanced?(string)
  parentheses = string.chars.select {|item| item == '(' || item == ')'}
  size = parentheses.size
  if size.odd?
    false
  elsif size == 2
    parentheses[0] == '(' && parentheses[1] == ')' ? true : false
  else
    parentheses[0..size/2] == parentheses[size/2..-1]
  end
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false

def other_solution(string)
  parens = 0
  string.chars.each do |item|
    parens += 1 if item == '('
    parens -= 1 if item == ')'
  end

  parens.zero?
end

other_solution('What (is) this?') == true
other_solution('What is) this?') == false
p other_solution('What (is this?') == false
p other_solution('((What) (is this))?') == true
p other_solution('((What)) (is this))?') == false
p other_solution('Hey!') == true
other_solution(')Hey!(') == false
other_solution('What ((is))) up(') == false
