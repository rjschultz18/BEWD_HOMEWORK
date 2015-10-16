require 'sinatra'
require 'httparty'

get '/' do
  url = 'http://www.mashable.com/stories.json'
  parsed_mash = HTTParty.get(url).parsed_response

  new_stories = parsed_mash['new']
  @story = new_stories[0....]
  erb :stories
end
