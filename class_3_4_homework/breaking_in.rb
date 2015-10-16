puts "Are you an Admin? (Y/N)"
admin = gets.chomp
# answer = "hint"
guess = "bday"
code = "1234"
if admin == "n"
  puts "Access denied your IP is blocked"
elsif admin == "y"
  puts "What is the code?"
  number = gets.chomp
if number == code
  puts "Welcome to the Military"
elsif number == "hint"
  puts "Your hint is: #{guess}"
  puts "What is the code?"
  number = gets.chomp
  if number == code
    puts "Welcome to the Military"
else
  puts "wrong".upcase
end
end
end
