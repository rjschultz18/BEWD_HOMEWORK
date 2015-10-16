require 'httparty'

url = 'http://www.mashable.com/stories.json'

mash_response = HTTParty.get( url )
parsed = mash_response.parsed_response


title = parsed['new'][2]['title']
puts "\nThe title of the 3rd new story is '#{ title }'."

link = parsed['hot'][1]['link']
puts "\nThe link inside the 2nd hot story is #{link}"

size = parsed['new'][5]['responsive_images'].last['size']
puts "\nSize is #{size}."

shares = parsed['hot'][0]['shares']['twitter']
puts "\nshares: #{shares}"

channel = parsed['rising'][7]['channel']
puts "\nchannel is #{channel}"
