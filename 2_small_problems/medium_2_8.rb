# require 'pry'

def valid?(num)
  (num % 7 == 0) && (num.digits.uniq.size == num.digits.size) && (num.odd?)
end

def featured(num)
  num
  loop do 
    num += 1
    # binding.pry
    break if valid?(num)
  end
  num
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987