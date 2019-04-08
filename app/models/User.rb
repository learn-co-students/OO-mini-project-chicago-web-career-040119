class User
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

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

  # def dangerous_recipes
  #   danger_list = self.allergens.map {|allergen|
  #     allergen.ingredient
  #   }

  #   RecipeIngredient.all.each do |rci|
  #     rci.ingredient
  #   end

  #   binding.pry


  # end

  # def safe_recipes
  #   Recipe.all - dangerous_recipes
  # end

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

  def self.all
    @@all
  end
end
