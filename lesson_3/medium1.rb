# Question 1
string = "The Flintstones Rock!"
10.times {|number| puts (" " * number) + string}

# Question 2
statement = "The Flintstones Rock!"
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end
p result

# Question 3
puts 'the value of 40 + 2 is ' + (40 + 2).to_s
puts "the value of 40 + 2 is #{(40 + 2)}"

# Question 5
def factors(number)
  dividend = number
  divisors = []
  while divident > 0 do
    divisors <<  number / divided if number % dividend == 0
    divided -= 1
  end

# Question 7
#limit = 15

def fib(first_num, second_num, limit)
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

#Question 8
words.split.map {|word| word.downcase.capitalize}.join(' ')

# Question 9
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.each do |name, details|
  case details["age"]
  when 0...18
    details["age_group"] = "kid"
  when 18...65
    details["age_group"] = "adult"
  else
    details["age_group"] = "senior"
  end
end
