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
        @recipe = current_user.recipes.build(params)
        if @recipe.save
            redirect '/recipes'
        else 
            erb :'recipes/new'
        end 
    end 

    get '/recipes/:id/edit' do 
        @recipes = Recipe.find_by_id(params[:id])
        erb :'recipes/edit' 
    end 

    patch '/recipes/:id' do 
        @recipe = Recipe.find_by_id(params[:id])
        @recipe.update(recipe_name: params[:recipe_name])
        # @recipe.update(how_to_make: params[:how_to_make])
        redirect '/recipes'
    end  


end 
 