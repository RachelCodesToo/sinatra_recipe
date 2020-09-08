require './config/environment'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get "/" do
    #redirect to sign up page or change the welcome page to have the links for siging up or signing in
    # erb :'recipes/index'
    erb :welcome
  end

end
