require_relative 'config/environment'

class App < Sinatra::Base
  get "/" do 
  @user_input = params[:user_input]
    erb :user_input
  end

  post "/user_input" do
    @piglatiner = PigLatinizer.new(params[:user_input])
    "#{@piglatiner}"
    erb :user_input
  end
  
end