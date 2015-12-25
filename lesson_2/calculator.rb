# asks for 2 numbers
# asks for the type of operation to perform: add, subtract, multiply, or divide
# display the result

def prompt(message)
  puts "=> #{message}"
end

def valid_number?(num)
  num.to_i != 0
end

def operation_to_message(op)
  case op
  when "1"
    "Adding"
  when "2"
    "Subtracting"
  when "3"
    "Multiplying"
  when "4"
    "Dividing"
  end
end

prompt("Welcome to the Calculator! Enter your name:")
name = ""
loop do
  name = gets.chomp
  if name.empty?
    prompt("Make sure to use a valid name.")
  else
    break
  end
end
loop do
  number1 = ""
  number2 = ""
  operation = ""

  loop do
    prompt("Please enter a number")
    number1 = gets.chomp
    if valid_number?(number1)
      break
    else
      prompt("Please enter a valid number")
    end
  end
  loop do
    prompt("Great. Please enter a second number")
    number2 = gets.chomp
    if valid_number?(number2)
      break
    else
      prompt("Please enter a valid number")
    end
  end
  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG
  prompt(operator_prompt)

  loop do
  operation = gets.chomp
    if %w(1 2 3 4).include?(operation)
      break
    else
    prompt("Must choose 1, 2, 3, or 4")
  end
end
prompt("#{operation_to_message(operation)} two numbers")

  result = case operation
          when "1"
            number1.to_i + number2.to_i
          when "2"
            number1.to_i - number2.to_i
          when "3"
            number1.to_i * number2.to_i
          when "4"
             number1.to_f / number2.to_f
  end

  prompt("The result is #{result}")

  prompt("Do you want to perform another calculation? (Y to calculate again)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for using the Calculator")
