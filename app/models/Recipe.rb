require "pry"

class Recipe
  #Class variables ################
  @@all = []

  #Instance variables #############
  attr_accessor :users, :ingredients, :allergens
  #Class methods ################
  def self.all
    @@all
  end

  def self.most_popular
    RecipeCard.all.group_by { |rc|
      rc.recipe
    }.transform_values { |recipe|
      recipe.size
    }.max_by {|key, val| val}.first
  end

  #Instance methods #############
  attr_reader :name
  #attr_accessor

  def initialize(name)
    #Class ################
    @@all << self
    #Instance  #############
    @name = name

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

    # self.ingredients.select {|rci|
    #   Allergy.all.map{|allergy|
    #      allergy.ingredient.name
    #   }.include?(rci.ingredient.name)
    #   #binding.pry
  end

  def add_ingredients(arr_ingred)
    arr_ingred.each { |ingred|
      RecipeIngredient.new(self, ingred)
    }
  end



end
