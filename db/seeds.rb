users = [
    {username: 'bestcook', password: 'best', email: 'a@bestcook.com'}
]

@users.each do |u|
    User.create(u)
end 

recipes = [
    {recipe_name: 'lumpia', ingredients: 'groubd meat, egg, salt, pepper, carrots, onions, relish', how_to_make: 'mix in a bowl, wrap and fry'}
]

@recipes.each do |r|
    Recipe.create(r)
end 