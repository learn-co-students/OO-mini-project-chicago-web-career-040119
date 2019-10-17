require_relative '../config/environment.rb'

ing1 = Ingredient.new("Fruit", "Produce")
ing2 = Ingredient.new("Jelly", "Condiment")
ing3 = Ingredient.new("Cheese", "Dairy")
ing4 = Ingredient.new("Bread", "Grain")
pie = Recipe.new("Pie", ing1)
pbj = Recipe.new("Pb&J", ing2)
cheese = Recipe.new("Cheese", ing3)
pasta = Recipe.new("Pasta", ing4)
user1 = User.new("Sarah", 34)
user2 = User.new("Amy", 10)
user3 = User.new("Nick", 39)
card1 = RecipeCard.new(pie, user1, 5)
card2 = RecipeCard.new(pie, user2, 5)
card3 = RecipeCard.new(pie, user3, 4)
card4 = RecipeCard.new(pbj, user2, 4)
card5 = RecipeCard.new(pasta, user1, 5)
card6 = RecipeCard.new(pasta, user2, 3)
card7 = RecipeCard.new(cheese, user3, 5)
card6 = RecipeCard.new(cheese, user2, 2)
allergy1 = Allergy.new(ing1, user1)
allergy2 = Allergy.new(ing3, user1)
allergy3 = Allergy.new(ing2, user2)
recing1 = RecipeIngredient.new(ing1, pie)
recing2 = RecipeIngredient.new(ing2, pbj)
recing3 = RecipeIngredient.new(ing4, pbj)





binding.pry
