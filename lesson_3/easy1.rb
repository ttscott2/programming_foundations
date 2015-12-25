#Question 1
# the code will print out the original numbers array. The uniq method is not destructive.

# Question 2
# != is "not equals"
# used before a variable, ! means "not"; used after a variable, it usually indicates a destructive method.
# Question 5
range = (10..100)
range_array = range.to_a
if range_array.include?(42)
  puts "42 is in the range"
end

# Question 9
flintstones = {
  "Fred": 0,
  "Wilma": 1,
  "Barney": 2,
  "Betty": 3,
  "BamBam": 4,
  "Pebbles": 5
}
