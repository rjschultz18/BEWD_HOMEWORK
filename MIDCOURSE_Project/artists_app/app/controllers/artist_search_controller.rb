class ArtistSearchController < ApplicationController
  def home
    @artist = params[:text]
    @artist_search = HTTParty.get("http://developer.echonest.com/api/v4/artist/songs?api_key=IQANJYKFHTP2SN7Z1&name=#{@artist}&format=json&start=0&results=20").parsed_response
  end

  def artist_list
    @artist = params[:text]
    @artist_search = HTTParty.get("http://developer.echonest.com/api/v4/artist/songs?api_key=IQANJYKFHTP2SN7Z1&name=#{@artist}&format=json&start=0&results=20").parsed_response
    @song = @artist_search['response']['songs']['title']
    @google_url = "https:/www.google.com/?q=#{@song}"
  end
end
