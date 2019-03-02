# problem: method that prints a string as many times as indicated
# data structure: none
# algorithm:
# - define a method that takes two arguments, string and num
# - in method definition:
# - num.times puts string

def repeat(string, num)
  num.times {puts string}
end

repeat('Hello', 3)
