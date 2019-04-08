require "pry"

class Recipe
  @@all = []

  attr_accessor :users, :ingredients, :allergens
  attr_reader :name

  def self.all
    @@all
  end

  def initialize(name)
    @name = name

    @@all << self
  end

  def users
    RecipeCard.all.select { |r_card|
      r_card.recipe == self
    }
  end

  def ingredients
    RecipeIngredient.all.select { |ingred|
      ingred.recipe == self
    }.map { |rci|
      rci.ingredient
    }
  end

  def allergens
    ingredients.select {|ingredient|
      Allergy.all.map { |allergen|
        allergen.ingredient.name
      }.include?(ingredient.name)
    }
  end

  def add_ingredients(arr_ingred)
    arr_ingred.each { |ingred|
      RecipeIngredient.new(self, ingred)
    }
  end

  def self.most_popular
    RecipeCard.all.group_by { |rc|
      rc.recipe
    }.transform_values { |recipe|
      recipe.size
    }.max_by {|key, val| val}.first
  end
end
