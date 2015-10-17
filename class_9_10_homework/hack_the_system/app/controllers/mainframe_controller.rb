class MainframeController < ApplicationController
  def login
  end

  def home
  end

  def mainframe
    code = '0000'
if params[:code] == code
else
  redirect_to '/failed'
end
  end

  def failed
  end
end
