class RecipeController < ApplicationController

    get '/recipe' do 
        erb :'recipe/index'
    end 

    
end 
