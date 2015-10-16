class MonkeyController < ApplicationController
  def index
    @input = params[:text]
    if @input.blank?
      redirect_to "/parrot"
    end
  end
end
