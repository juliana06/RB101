# ask user: loan amount, Annual Percentage Rate, load duration
# calculate: montly interest rate, loan duration in months

# START

# SET loan_amount = nil
# WHILE loan_amount != valid
#   GET loan amount from user
#   SET loan_amount = input1

# SET annual_rate = nil
# WHILE annual_rate != valid
#   GET annual rate from user
#   SET annual_rate = input2

#   SET loan_duration = nil
# WHILE loan_duration != valid
#   GET duration of loan from user
#   SET loan_duration = input3

# SET monthly_interest_rate (annual_rate / 12 )
# SET duration_in_months (loan_duration / 12 )

# SET monthly_payments (use formula to calculate)

def prompt(message)
  puts "=> #{message}"
end

def valid_float?(amount)
  amount.to_f.to_s == amount
end

def valid_number?(number)
  number.to_i.to_s == number
end

prompt("Welcome to the loan calculator!")

prompt("What is your current loan amount?")
loan_amount = ""
loop do
  loan_amount = gets.chomp
  if valid_number?(loan_amount)
    break
  else
    prompt("Please use only numbers to express your loan amount")
  end
end

prompt("Now tell me your annual interest rate: ")
annual_rate = ""
loop do
  annual_rate = gets.chomp
  if valid_float?(annual_rate)
    break
  else
    prompt("Please express your annual rate in percentage with a decimal place")
  end
end

prompt("Finally, tell me how long is your loan for (in years): ")
loan_duration = ""
loop do
  loan_duration = gets.chomp
  if valid_number?(loan_duration)
    break
  else
    prompt("Please use a whole number to express your loan terms in years")
  end
end

monthly_interest_rate = annual_rate.to_f / 100 / 12.0

loan_duration_in_months = loan_duration.to_i * 12

monthly_payment = loan_amount.to_i *
                  (monthly_interest_rate /
                  (1 - (1 + monthly_interest_rate)**(-loan_duration_in_months)))

prompt("Your monthly payment will be $#{monthly_payment.round(2)}")
