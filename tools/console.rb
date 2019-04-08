require_relative '../config/environment.rb'

dia= User.new("Diana")
nick = User.new("Nick")
sam = User.new("Sam")

soup= Recipe.new("New england Chowder")
stew=Recipe.new("Goulash")
steak=Recipe.new("Ribeye")
pizza1 = Recipe.new("Detroit Style Pizza")
pizza2 = Recipe.new("Chicago Style Pizza")
pizza3 = Recipe.new("NY Style Pizza")

nick.add_recipe_card(stew, 1900,1)
dia.add_recipe_card(soup, 2000, 5)
dia.add_recipe_card(steak, 2018, 3)
nick.add_recipe_card(pizza1, 1970, 5)
nick.add_recipe_card(pizza2, 1900, 2)
nick.add_recipe_card(pizza3, 2019, 4)
nick.add_recipe_card(steak, 2033, 1)
nick.add_recipe_card(soup, 2040, 1)
sam.add_recipe_card(soup, 2002, 5)

flour = Ingredient.new("flour")
tomato = Ingredient.new("Tomato")
milk = Ingredient.new("Milk")
peanut = Ingredient.new("Peanut")
cheese = Ingredient.new("Cheese")
beef = Ingredient.new("Beef")
garlic = Ingredient.new("Garlic")

lactose_allg = Allergy.new(nick, milk, "Lactose Intolerant")
peanut_allg1 = Allergy.new(dia, peanut, "Peanut Allergy")
beef_allg = Allergy.new(dia, beef, "Beef Allergy")
peanut_allg2 = Allergy.new(nick, peanut, "Peanut Allergy")

rci1 = RecipeIngredient.new(flour, pizza1)
rci2 = RecipeIngredient.new(flour, pizza2)
rci3 = RecipeIngredient.new(flour, pizza3)
rci4 = RecipeIngredient.new(cheese, pizza1)
rci5 = RecipeIngredient.new(cheese, pizza2)
rci6 = RecipeIngredient.new(beef, soup)
rci7 = RecipeIngredient.new(milk, soup)
rci8 = RecipeIngredient.new(garlic, soup)
rci9 = RecipeIngredient.new(beef, steak)
rci10 = RecipeIngredient.new(garlic, steak)
rci11 = RecipeIngredient.new(beef, stew)
rci12 = RecipeIngredient.new(garlic, stew)
rci13 = RecipeIngredient.new(peanut, stew)
rci14 = RecipeIngredient.new(tomato, stew)



binding.pry
