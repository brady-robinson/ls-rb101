def string_plus_rutabega(a_string_param)
    a_string_param += "rutabaga"
end

def array_plus_rutabega!(an_array_param)
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
string_plus_rutabega(my_string)
array_plus_rutabega!(my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"



def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += "rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string1 = "pumpkins"
my_array1 = ["pumpkins"]
my_string1, my_array1 = not_so_tricky_method(my_string1, my_array1)

puts "My string looks like this now: #{my_string1}"
puts "My array looks like this now: #{my_array1}"