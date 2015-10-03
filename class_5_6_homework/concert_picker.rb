artists = ['Beyonce', 'Run The Jewels', 'Kings of Leoon']
venues = ['Hollywood Bowl', 'The El Rey', 'The Greek']
ticket_types = ['General Admission', 'VIP']
ticket = {}

puts "What artist do you want to see?"
ticket[:artist] = gets.chomp
puts "Which venue do you want to go to?"
ticket[:venue] = gets.chomp
puts "Do you want VIP or GA?"
ticket[:ticket_type] = gets.chomp


puts "Your ticket info is:"
  puts "Artist: #{ticket[:artist]}"
  puts "Venue: #{ticket[:venue]}"
  puts "Ticket Type: #{ticket[:ticket_type]}"
