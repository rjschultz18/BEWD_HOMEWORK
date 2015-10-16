class ZenController < ApplicationController
  def index
    @quote = HTTParty.get('https://api.github.com/zen')
    @image_url = "http://lorempixel.com/500/500/nature"
    set_quote = @quote.split.join('+')
    @google_url = "https:/www.google.com/?q=#{set_quote}"
  end
end
