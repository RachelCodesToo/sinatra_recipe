class RecipesController < ApplicationController

    get '/recipes' do 
        @recipes = Recipe.all
        erb :'recipe/index'
    end 

    
end 
