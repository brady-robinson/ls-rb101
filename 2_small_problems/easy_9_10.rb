def get_grade(one, two, three)
  average = (one + two + three) / 3

  case average
  when 91..100 then "A"
  when 81..90 then "B"
  when 71..80 then "C"
  when 61..70 then "D"
  else "F"
  end
end

p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"