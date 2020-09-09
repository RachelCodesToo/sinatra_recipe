class CreateRecipes < ActiveRecord::Migration[5.2]
  def change
    create_table :recipes do |t|
      t.string :recipe_name 
      t.text :how_to_make
      t.integer :user_id
      t.timestamps 
    end 
  end
end
