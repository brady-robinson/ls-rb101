def negative(num)
  if num > 0
    num * -1
  else
    num
  end
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0