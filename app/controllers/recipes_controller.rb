class RecipesController < ApplicationController

    get '/recipes' do 
        if logged_in? 
             @recipes = Recipe.all
            erb :'recipes/index'
        else
            redirect '/login'
        end     
    end 

    get '/recipes/new' do 
        erb :'recipes/new'
    end 


    post '/recipes' do 
        recipe = current_user.recipes.build(params)
        recipe.save
        redirect '/recipes'
    end 


    
end 
 