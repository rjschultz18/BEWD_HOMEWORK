class ParrotController < ApplicationController
  def index
    @input = params[:text]
  end

  def about
  end
end
