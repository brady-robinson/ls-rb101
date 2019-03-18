# problem: write a method that adds a conjunction and
#          give the option for punctuation
# data: array
# alg:
# - define the method
# - give it three arguments, autmomatically asign the last two
# - the first argument is input
# - the second is punctuation, comma default
# - the third is conjunction, 'or' default
# - concatenate the rest

def joinor(array, punct=', ', conj='or ')
  case array.size
  when 0 then ''
  when 1 then array.first
  when 2 then array.join(" #{conj} ")
  else
    array[-1] = "#{conj} #{array.last}"
    array.join(punct)
  end
end




puts joinor([1, 2]) # "1 or 2"
puts joinor([1, 2, 3]) # "1, 2, or 3"
puts joinor([1, 2, 3], '; ') # "1; 2; or 3"
puts joinor([1, 2, 3], ', ', 'and') # "1, 2, and 3"