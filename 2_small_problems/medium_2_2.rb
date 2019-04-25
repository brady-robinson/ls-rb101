BLOCKS = w%(BO GT VI XK RE LY DQ FS ZM CP JW NA HU).freeze

def block_word?(string)
  up_string = string.upcase
  BLOCKS.none? { |block| up_string.count(block) >= 2 }
end

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
