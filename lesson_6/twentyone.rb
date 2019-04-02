cards = [2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,
         8,8,8,8,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,
         10,10,10,10,11,11,11,11]

player_cards = []
dealer_cards = []

def eleven_to_one(player_cards)
  player_cards.delete(11)
  player_cards << 1
end

loop do
  player_cards = []
  dealer_cards = []
  
  cards = [2,2,2,2,3,3,3,3,4,4,4,4,5,5,5,5,6,6,6,6,7,7,7,7,
         8,8,8,8,9,9,9,9,10,10,10,10,10,10,10,10,10,10,10,10,
         10,10,10,10,11,11,11,11]

  dealer_cards << cards.shuffle!.pop << cards.shuffle!.pop
  loop do
    player_cards << cards.shuffle!.pop << cards.shuffle!.pop
    if player_cards.inject(:+) == 21
        puts "You have 21."
        break
    elsif player_cards.inject(:+) > 21 && player_cards.include?(11)
      eleven_to_one(player_cards)
    end

    loop do
      puts "You have #{player_cards.inject(:+)} (#{[player_cards]}. 
      Dealer has #{dealer_cards.inject(:+)} (#{[dealer_cards]}."
      puts "Would you like to 'hit' or 'stay'?"
      hit_or_stay = gets.chomp.downcase
      case hit_or_stay
      when 'stay'
        break
      when 'hit'
        player_cards << cards.shuffle!.pop
      end

      if player_cards.inject(:+) == 21
        puts "You have 21."
        break
      elsif player_cards.inject(:+) < 21
        next
      elsif player_cards.inject(:+) > 21 && player_cards.include?(11)
        eleven_to_one(player_cards)
      else
        puts "Bust!"
        break
      end
    end
    puts "You have #{player_cards.inject(:+)} #{[player_cards]}. 
    Dealer has #{dealer_cards.inject(:+)} #{[dealer_cards]}."
    break
  end

  loop do 
    if player_cards.inject(:+) > 21
      break
    elsif dealer_cards.inject(:+) > 21
      puts "Dealer has #{dealer_cards.inject(:+)} #{[dealer_cards]}."
      puts "Dealer busts!"
      break
    elsif dealer_cards.inject(:+) >= 17 
      break
    else
      dealer_cards << cards.shuffle!.pop
    end
  end

  if (dealer_cards.inject(:+) <= 21 && player_cards.inject(:+) <= 21) && (dealer_cards.inject(:+) > player_cards.inject(:+))
    puts "You have #{player_cards.inject(:+)} #{[player_cards]}. 
    Dealer has #{dealer_cards.inject(:+)} #{[dealer_cards]}."
    puts "Dealer wins."
  elsif (dealer_cards.inject(:+) <= 21 && player_cards.inject(:+) <= 21) && (player_cards.inject(:+) > dealer_cards.inject(:+))
    puts "You have #{player_cards.inject(:+)} #{[player_cards]}. 
    Dealer has #{dealer_cards.inject(:+)} #{[dealer_cards]}."
    puts "Player wins"
  elsif dealer_cards.inject(:+) > 21 && player_cards.inject(:+) <= 21
    puts "Player wins."
  elsif player_cards.inject(:+) > 21 && dealer_cards.inject(:+) <= 21
    puts "Dealer wins."
  else
    puts "Draw."
  end

  puts "Play again? (y/n)"
  answer = gets.chomp.downcase
  if answer == 'n'
    break
  else
    next
  end
end
