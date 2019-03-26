def final_grade(score)
  case score
  when 90..100
    "A"
  when 80..89
    "B"
  when 70..79
    "C"
  when 60..69
    "D"
  else
    "F"
  end
end

def get_grade(score_1, score_2, score_3)
  average = (score_1 + score_2 + score_3) / 3
  final_grade(average)
end

p get_grade(95, 90, 93) #== "A"
p get_grade(50, 50, 95) #== "D"