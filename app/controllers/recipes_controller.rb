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
        get_recipe
         if @recipe.user == current_user
            erb :'recipes/edit' 
         else
            redirect '/recipes'
         end 
    end 

    patch '/recipes/:id' do 
       get_recipe
       if @recipe.user == current_user #this handles a non authorization failure
            if @recipe.update(recipe_name: params[:recipe_name], how_to_make: params[:how_to_make])
                redirect '/recipes'    
            else 
                erb :'recipes/edit'
            end 
        else
            redirect '/recipes'
       end 
        
    end  

    delete '/recipes/:id' do 
        get_recipe 
        if @recipe.user == current_user
            @recipe.delete
        end 
            redirect '/recipes'
    end

    def get_recipe
        @recipe = Recipe.find_by_id(params[:id])
    end 

end 
 