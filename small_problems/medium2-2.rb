def block_word?(string)
  blocks = [
            ['B','O'], ['X','K'], ['D','Q'], ['C','P'], ['N','A'],
            ['G','T'], ['R','E'], ['F','S'], ['J','W'], ['H','U'],
            ['V','I'], ['L','Y'], ['Z','M']
           ]
  count = 0
  count_2 = 0
  array = string.upcase.chars
  boolean = true
  
  loop do 
    break if count >= array.size
    current_element = array[count]
    loop do 
      break if count_2 >= blocks.size
      if blocks[count_2].include?(current_element)
        blocks[count_2].delete(current_element)
      end
      count_2 += 1
    end
    count += 1
    count_2 = 0
  end

  p blocks

  blocks.each do |sub_array|
    if sub_array.empty?
      boolean = false
    end
  end

  boolean

end

p block_word?('BUTCH') == false


BLOCKZ = %w(BO XK DQ CP NA GT RE FS JW HU VI LY ZM).freeze

def same_method(string)
  up_string = string.upcase
  BLOCKZ.none? {|blockz| up_string.count(blockz) >= 2}
end


