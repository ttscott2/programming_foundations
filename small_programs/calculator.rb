puts 'Welcome to Calculator'

puts "What's the first number?"
number1 = gets.chomp
puts "The number is #{number1}"

puts "What's the second number?"
number2 = gets.chomp
puts "The second number is #{number2}"

puts 'What operation would you like to perform?
1)add 2)subtract 3)multiply 4)divide'
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
