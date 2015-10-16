require 'sinatra'
require 'httparty'

get '/' do
  erb :home
end

post '/pantscast' do
zip = params["zipcode"]
ziphip = HTTParty.get ("http://api.zippopotam.us/us/#{zip}")
  lat = ziphip['places'][0]['latitude']
  lng = ziphip['places'][0]['longitude']

forecast = HTTParty.get ("https://api.forecast.io/forecast/017e4347b30c28eea9e0dad88f1f8ca1/#{lat},#{lng}")
  @current = forecast['currently']['temperature']
  @high = forecast['daily']['data'][0]['temperatureMax']
  @low = forecast['daily']['data'][0]['temperatureMin']

if @high >= 75
      @message = 'Time to wear shorts!'
  else
      @message = 'Time to wear pants!'
  end

  erb :pantscast
end
