def prompt(message)
  puts "=> #{message}"
end
loop do
  prompt('Welcome to the Car Loan Calculator!')
  prompt('-------------------------------------')
  prompt('How much is your car loan?')
  loan_amount = ''
  loop do
    loan_amount = gets.chomp
    if loan_amount.empty? || loan_amount.to_i < 0
      prompt('Please enter a positive number')
    else
      break
    end
  end
  prompt('What is the interest rate?')
  prompt('Example: 10 for 10% or 5.5 for 5.5%')
  interest_rate = ''
  loop do
    interest_rate = gets.chomp
    if interest_rate.empty? || interest_rate.to_f < 0
      prompt('Please enter a positive number')
    else
      break
    end
  end
  prompt('What is the term length of your loan (in years)?')
  loan_years = ''
  loop do
    loan_years = gets.chomp
    if loan_years.empty? || loan_years.to_i < 0
      prompt('Please enter a positive number of years')
    else
      break
    end
  end
  annual_interest_rate = interest_rate.to_f / 100
  monthly_interest_rate = annual_interest_rate / 12
  months = loan_years.to_i * 12

  monthly_payment = loan_amount.to_f *
                    (monthly_interest_rate /
                    (1 - (1 + monthly_interest_rate)**-months.to_i))

  prompt("Your monthly payment will be: $#{format('%02.2f', monthly_payment)}")

  prompt('Would you like to perform another calculation?')
  answer = gets.chomp

  break unless answer.downcase.start_with?('y')
end
prompt('Thank you for using the Car Loan Calculator')
prompt('Goodbye')
