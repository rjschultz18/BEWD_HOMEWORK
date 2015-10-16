puts "Enter an animal that makes a sound"
  animal = gets.chomp

puts "You entered " + animal.downcase

puts "What sound does a " + animal.downcase + " make?"
  sound = gets.chomp

puts "You entered " + sound.downcase

puts "How many times does the animal make sound?"
  number = gets.chomp.to_i

puts "The " + animal.downcase + " goes " + (sound.downcase + " , ") * (number - 1) + sound.downcase + "."
