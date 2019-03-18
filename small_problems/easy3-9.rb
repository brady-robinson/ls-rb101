ALPHA_NUMERICS = (1..9).to_a + ('a'..'x').to_a + ('A'..'X').to_a

def palindrome?(string)
  string == string.reverse
end

def delete_non_alphanumerics(array)
  array.delete_if {|x| !ALPHA_NUMERICS.include?(x)}
end

def real_palindrome?(string)
  string2 = string.downcase.delete("^a-z0-9")
  palindrome?(string2)
end

puts real_palindrome?('madam') == true
puts real_palindrome?('Madam') == true           # (case does not matter)
puts real_palindrome?("Madam, I'm Adam") == true # (only alphanumerics matter)
puts real_palindrome?('356653') == true
puts real_palindrome?('356a653') == true
puts real_palindrome?('123ab321') == false