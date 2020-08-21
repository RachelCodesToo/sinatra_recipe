class RecipesController < ApplicationController

    get '/recipes' do 
        erb :'recipe/index'
    end 

    
end 
