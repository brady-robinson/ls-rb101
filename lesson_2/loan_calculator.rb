
require 'yaml'
MESSAGES = YAML.load_file('loan_calculator_messages.yml')

def messages(message)
  MESSAGES[message]
end

def prompt(string)
  "=> #{string}"
end

def valid_float?(float)
  float.to_i.to_s == float || float.to_f.to_s == float
end

puts prompt messages("welcome")

user_name = ''
loop do
  puts prompt messages("name_prompt")
  user_name = Kernel.gets().chomp().capitalize

  if user_name.empty?()
    puts prompt messages("invalid_name")
  else
    break
  end
end

puts prompt "Welcome #{user_name}!"

loop do
  loan_amount = ''
  loop do
    puts prompt messages("enter_loan")
    loan_amount = gets.chomp

    if valid_float?(loan_amount)
      break
    else
      puts prompt messages("invalid_number")
    end
  end

  apr = ''
  loop do
    puts prompt messages("enter_apr")
    apr = gets.chomp

    if valid_float?(apr)
      break
    else
      puts prompt messages("invalid_number")
    end
  end

  monthly_interest_rate = apr.to_f / 100 / 12.0

  duration_years = ''
  loop do
    puts prompt messages("enter_loan_duration")
    duration_years = gets.chomp

    if valid_float?(duration_years)
      break
    else
      puts prompt messages("invalid_number")
    end
  end

  duration_months = duration_years.to_f * 12.0

  monthly_payment = loan_amount.to_f * (monthly_interest_rate.to_f /
                    (1.0 - (1.0 + monthly_interest_rate.to_f)**-duration_months.to_f))
  payment_round = monthly_payment.round(2)

  puts prompt "#{user_name}, your montly mortgage payment is $#{payment_round}"
  puts prompt messages("again?")
  answer = gets.chomp.downcase
  if answer == 'y'
    next
  else
    break
  end

  break
end

puts "Thank you for using the mortgage calculator!"
