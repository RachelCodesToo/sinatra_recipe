class Recipe < ActiveRecord::Base 
    belongs_to :user
    validates :recipe_name, :how_to_make, presence: true
    
end 
