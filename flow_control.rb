##message = gets.chomp
#if message.length == 0
##  puts "This is zero"
#elsif message.length % 2 == 0
#  puts "your number is even"
#elsif
#  puts "your number is odd"

#end
# puts "word"
# message = gets.chomp
# if message.end_with?("a","e","i","o","u") == true
#   puts "VOWEL"
# elsif message.end_with?("y") == true
#     puts "Don't know"
# else
#   puts "CONSONANT"
#
# end
# 5.times do |i|
#   if i %2 ==0
#     puts "Line is even"
#   else
#     puts "Line is odd"
#   end
# end

#
# 5.times do |i|
# puts "This is my output line #{i+1}"
# end
# i=1
# while i<6
#   puts "This is my output line #{i}"
#   i+=1
# end
# i =1
# until i == 6
#   puts "This is my output line #{i}"
#   i+=1
# end

number = rand(0..10)
puts "(the secret number is #{number})"
guess= rand(0..10)
until guess == number
  puts "guess is #{guess}"
  puts "guess again!"
  guess = rand(0..10)
end
  puts "guess is #{guess}"
  puts "You win!"
