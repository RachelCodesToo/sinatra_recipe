class RecipesController < ApplicationController

    get '/recipes' do 
        if logged_in? 
             @recipes = Recipe.all
            erb :'recipes/index'
        else
            redirect '/login'
        end     
    end 

    
end 
