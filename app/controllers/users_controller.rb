class UsersController < ApplicationController 

    get '/signup' do 
        erb :'users/signup'
    end 

    post '/signup' do 
      @user = User.create(params)
      erb :'users/index'
    end 

    get '/login' do 
        erb :'users/login'
    end 

    post '/login' do 
        @user = User.find_by(username: params[:username])
        if @user && @user.authenticate(params[:password])
            session[:user_id] = @user.id
            erb :'users/index'
        else 
            redirect '/login'
        end 

    end 



end 
