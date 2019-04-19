def stringy(integer)
  string = "1"
  iterations = integer - 1

  iterations.times do 
    if string.size.odd? 
      string << "0"
    else
      string << "1"
    end
  end

  string
end

puts stringy(6) #== '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
