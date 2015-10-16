require 'sinatra'

get "/" do
  @message = params[:message]
  erb :home
end

post "/parrot" do
  @says = params[:says]
  if @says.empty?
    redirect ('/?message=WARNING!%20you%20must%20enter%20a%20statement')
  end
  erb :myparrot
end
