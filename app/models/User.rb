class User

  attr_reader :name

  @@all = []

  def initialize(name)
    @name= name

    @@all << self
  end

  def self.all
    @@all
  end

  def my_recipe
    #helper method to return all recipes for user
    RecipeCard.all.select {|rc| rc.user == self}
  end

  def recipes
    #should return all of the recipes this user has recipe cards for
    my_recipe.map {|rc| rc.recipe}
  end

  def add_recipe_card(recipe, date, rating)
    #should accept a recipe instance as an argument, as well as a date and rating, and create a new recipe card for this user and the given recipe
    RecipeCard.new(self, recipe, date, rating)
  end

  def allergens
    # should return all of the ingredients this user is allergic to
    instances = Allergy.all.select {|allergy| allergy.user == self}
    instances.map {|allergy| allergy.ingredient.name}
  end

  def top_three_recipes
    # should return the top three highest rated recipes for this user.
    sorted_intances = my_recipe.sort_by {|rc| rc.rating}.reverse
    sorted_intances.map {|rc| rc.recipe.name}.slice(0, 3)
  end

  def most_recent_recipes
    # should return the recipe most recently added to the user's cookbook.
    my_recipe.pop
  end

  def safe_recipes
    #should return all recipes that do not contain ingredients the user is allergic to
    bad_recipes = []
    all_recipes = Recipe.all
    self.allergens.each do |allergen|
      RecipeIngredient.all.each do |instance|
        if instance.ingredient.name.include?(allergen)
          bad_recipes << instance.recipe
        end
      end
    end
    allergy_free_recipes = all_recipes - bad_recipes
  end


end
