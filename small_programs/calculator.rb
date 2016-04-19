def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

prompt 'Welcome to Calculator'

loop do
  number1 = ''
  loop do
    prompt("What's the first number?")
    number1 = gets.chomp
      if valid_number?(number1)
        break
      else
        prompt('Please enter a valid number')
      end
    end
  puts "The first number is #{number1}"

  number2 = ''
  loop do
    prompt("What's the second number?")
    number2 = gets.chomp
      if valid_number?(number2)
        break
      else
        prompt('Please enter a valid number.')
      end
  end
  puts "The second number is #{number2}"

  prompt("Choose an operation")
  puts '1) add 2) subtract 3) multiply 4) divide'
  operator = gets.chomp

  if operator == '1'
    result = number1.to_i + number2.to_i
  elsif operator == '2'
    result = number1.to_i - number2.to_i
  elsif operator == '3'
    result = number1.to_i * number2.to_i
  else
    result = number1.to_f / number2.to_i
  end

  puts "The result is #{result}"

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using this beautiful calculator. Bye!")
