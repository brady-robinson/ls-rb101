def staggered_case(string)
  array = string.downcase.chars
  count = 0

  loop do 
    break if count >= array.size
    array[count].upcase!
    count += 2
  end

  array.join
end


p staggered_case('I Love Launch School!') == 'I LoVe lAuNcH ScHoOl!'
p staggered_case('ALL_CAPS') == 'AlL_CaPs'
p staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 NuMbErS'