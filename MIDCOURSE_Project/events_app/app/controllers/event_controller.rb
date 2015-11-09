class EventController < ApplicationController
  def home
  end

  def artist
    @artist = params[:artist_input]
    artist_response = HTTParty.get("http://api.songkick.com/api/3.0/search/artists.json?query=#{@artist}&apikey=jaS6z3vFBUW0Aq1i").parsed_response
    @artist_list = artist_response['resultsPage']['results']['artist'][0]
    @artist_name = @artist_list['displayName']
    @artist_tour = @artist_list['onTourUntil']
      if @artist_tour == nil
        puts "NO :("
      end
  @youtube_url = "https://www.youtube.com/results?search_query=#{@artist}"
  end

  def venue
    @venue = params[:venue_input]
    venue_response = HTTParty.get("http://api.songkick.com/api/3.0/search/venues.json?query=#{@venue}&apikey=jaS6z3vFBUW0Aq1i").parsed_response
    @venue_list = venue_response['resultsPage']['results']['venue'][0]
    @venue_name = @venue_list['displayName']
    @street = @venue_list['street']
    @city = @venue_list['city']['displayName']
    @description = @venue_list["description"]
    @google_url = "https://www.google.nl/search?tbm=isch&q=#{@venue}"
  end
end
