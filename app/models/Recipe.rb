class Recipe
  attr_reader :name


  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def users
    # should return the user instances who have recipe cards with this recipe
    RecipeCard.all.select {|rc| rc.user == self}
  end


  def my_ri_instances
    RecipeIngredient.all.select {|rc| rc.recipe == self}
  end

  def ingredients
    #should return all of the ingredients in this recipe
    my_ri_instances.map {|ri| ri.ingredient}
  end

  def allergens
    #Recipe#allergens should return all of the Ingredients in this recipe that are allergens for Users in our system.
    allergies = ingredients.map do |ingredient_instance|
      allergy_instance = Allergy.all.select {|allergy| allergy.ingredient == ingredient_instance}
      allergy_instance.map {|instance| instance.ingredient.name}
    end
    allergies.flatten.uniq
  end

  def add_ingredients(ingredient_arr)
    #Recipe#add_ingredients should take an array of ingredient instances as an argument, and associate each of those ingredients with this recipe
    ingredient_arr.map {|ingredient| RecipeIngredient.new(ingredient, self)}
  end

  def self.all
    @@all
  end

  def self.most_popular
    #Recipe.most_popular should return the recipe instance with the highest number of users (the recipe that has the most recipe cards)
    names = RecipeCard.all.map {|rc| rc.recipe.name}
    single_name = names.sort_by {|name| names.count(name)}.reverse[0]
    self.all.select {|instance| instance.name == single_name }
  end


end
