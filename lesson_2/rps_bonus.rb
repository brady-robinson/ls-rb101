OPTIONS = [
  "'r' for rock", "'p' for paper",
  "'sc' for scissors",
  "'l' for lizard",
  "'sp' for spock"
]

VALID_CHOICES = ['r', 'p', 'sc', 'l', 'sp']

YOUR_SCORE = []
COMPUTER_SCORE = []

WIN_HASH = {
  rock:     ['scissors', 'lizard'],
  paper:    ['rock', 'spock'],
  scissors: ['paper', 'lizard'],
  lizard:   ['paper', 'spock'],
  spock:    ['rock', 'scissors']
}

def ultimate_winner(player)
  if player == 5
    prompt("You are the ultimate winner!")
  else
    prompt("The computer is the ultimate winner!")
  end
end

def overall_score(outcome)
  if outcome == "You won!"
    YOUR_SCORE.push('')
  elsif outcome == "Computer won!"
    COMPUTER_SCORE.push('')
  end
end

def full_choice(choice)
  case choice
  when 'r'
    'rock'
  when 'p'
    'paper'
  when 'sc'
    'scissors'
  when 'l'
    'lizard'
  when 'sp'
    'spock'
  end
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def win?(first, second)
  (first   == 'rock'     && WIN_HASH[:rock].include?(second)) ||
    (first == 'paper'    && WIN_HASH[:paper].include?(second)) ||
    (first == 'scissors' && WIN_HASH[:scissors].include?(second)) ||
    (first == 'lizard'   && WIN_HASH[:lizard].include?(second)) ||
    (first == 'spock'    && WIN_HASH[:spock].include?(second))
end

def result(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{OPTIONS.join(', ')}")
    choice = Kernel.gets().chomp().downcase

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{full_choice(choice)}. Computer chose #{full_choice(computer_choice)}.")

  prompt(result(full_choice(choice), full_choice(computer_choice)))
  iteration_result = result(full_choice(choice), full_choice(computer_choice))

  overall_score(iteration_result)

  prompt("First person to five wins is victorious.")
  prompt("You have #{YOUR_SCORE.length} wins. The computer has #{COMPUTER_SCORE.length} wins.")

  if YOUR_SCORE.length == 5 || COMPUTER_SCORE.length == 5
    break
  end
end

puts "____________________"

ultimate_winner(YOUR_SCORE)

puts "____________________"

prompt "Thank you for playing. Good bye!"
