def staggered_case(string)
  new_string = string.downcase
  count = 0
  array = new_string.chars
  loop do 
    break if count >= array.size
    current_element = array[count] 
    if current_element =~ /[A-Zz-z]/
      current_element.upcase!
    end
    count += 2
  end

  array.join
end

p staggered_case('I Love Launch School!') #== 'I lOvE lAuNcH sChOoL!'
p staggered_case('ALL CAPS') #== 'AlL cApS'
p staggered_case('ignore 77 the 444 numbers') #== 'IgNoRe 77 ThE 444 nUmBeRs'