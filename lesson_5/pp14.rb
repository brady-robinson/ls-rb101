# problem: return a new array that contains the colors of the fruits
#          and the sizes of the vegetables. 
#          The sizes should be uppercase
#          The colors should be capitalized
#          output: an array containing these items
# data:    hash, array
# alg
# - call method map
# - in the block call method map again with key, value
# -  if type is fruit return colors.capitalized
# -  else return size.upcase

hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

arr = hsh.map do |key,value|
    if value[:type] == "fruit"
      value[:colors].map{|item| item.capitalize}
    else
      value[:size].upcase
    end
end

p arr