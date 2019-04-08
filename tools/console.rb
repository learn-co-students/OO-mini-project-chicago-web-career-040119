require_relative '../config/environment.rb'

  cilantro = Ingredient.new("cilantro")
  tomato = Ingredient.new("tomato")
  potato = Ingredient.new("potato")
  onion = Ingredient.new("onion")
  cherry = Ingredient.new("cherry")
  orange = Ingredient.new("orange")
  chicken = Ingredient.new("chicken")
  peanut = Ingredient.new("peanut")
  shrimp = Ingredient.new("shrimp")
  strawberry = Ingredient.new("strawberry")
  egg = Ingredient.new("egg")
  bread = Ingredient.new("bread")
  strawberry = Ingredient.new("strawberry")


  jack = User.new("Jack")
  jose = User.new("Jose")
  mom = User.new("Mom")
  dad = User.new("Dad")

  soup = Recipe.new("soup")
  stirfry = Recipe.new("stirfry")
  salsa = Recipe.new("salsa")
  taco = Recipe.new("taco")
  burger = Recipe.new("burger")
  s_cocktail = Recipe.new("s_cocktail")
  pbj = Recipe.new("pbj")
  fruit_s = Recipe.new("fruit_s")

  soup.add_ingredients([potato, tomato, chicken, onion, cilantro])
  s_cocktail.add_ingredients([shrimp, tomato, onion, orange])
  pbj.add_ingredients([bread, peanut, strawberry])

  jack.declare_allergy(bread)
  jack.declare_allergy(shrimp)

  jose.declare_allergy(strawberry)
  jose.declare_allergy(bread)
  jose.declare_allergy(shrimp)
  jose.declare_allergy(egg)

  mom.declare_allergy(shrimp)

  dad.declare_allergy(shrimp)

  jose.add_recipe_card(soup, 4)
  jack.add_recipe_card(stirfry, 5)
  jose.add_recipe_card(salsa, 5)
  jose.add_recipe_card(taco, 5)
  jose.add_recipe_card(burger, 2)
  jose.add_recipe_card(s_cocktail, 3)
  jose.add_recipe_card(pbj, 2)

  jack.add_recipe_card(taco, 5)
  mom.add_recipe_card(taco, 5)
  dad.add_recipe_card(taco, 5)


binding.pry
"sup"
