class User
  @@all = []

  attr_accessor :name

  def initialize(name)
    @name = name

    @@all << self
  end

##---------------------------------------------------------------------------//
## => INSTANCE METHODS
##---------------------------------------------------------------------------//
  def recipes
    RecipeCard.all.select do |recipecard|
      recipecard.user == self
    end
  end

  def add_recipe_card(recipe, rating, date = Time.now)
    RecipeCard.new(self, recipe, rating, date)
  end

  def declare_allergy(ingredient)
    Allergy.new(self, ingredient)
  end

  def allergens
    Allergy.all.select {|allergy|
      allergy.user == self
    }
  end

  def dangerous_recipes
    danger_list = self.allergens.map {|allergen|
      allergen.ingredient
    }
    #binding.pry
    RecipeIngredient.all.select { |recipe|
      binding.pry
      recipe.ingredients.map {|ingredient|
        #binding.pry
        ingredient
      }.include?(danger_list.each {|ingred| ingred })
      #recipe.ingredients.include?(danger_list)
    }
  end

  def safe_recipes
    self.allergens.map {|allergen|
      allergen.ingredient
    }.select {||}
  end

  def top_three_recipes
    self.recipes.sort_by { |recipe|
      recipe.rating
    }.reverse.first(3)
  end

  def most_recent_recipe
    self.recipes.sort_by { |recipe|
      recipe.date
    }.last
  end

##---------------------------------------------------------------------------//
## => CLASS METHODS
##---------------------------------------------------------------------------//

  def self.all
    @@all
  end
end

User#top_three_recipes should return the top three highest rated recipes for this user.
User#most_recent_recipe should return the recipe most recently added to the user's cookbook.
