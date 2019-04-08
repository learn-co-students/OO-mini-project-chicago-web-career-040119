require "pry"
class Ingredient
  attr_accessor :recipe_ingredient
  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_common_allergen
    Allergy.all.group_by {|allergen|
      allergen.ingredient
    }.transform_values { |allergy|
      allergy.size
    }.max_by {|key,val| val}.first
    # .transform_values { |user|
    #   user.count
    # }
  end

end

# Ingredient.all should return all of the ingredient instances
# Ingredient.most_common_allergen should return the ingredient instance that the highest number of users are allergic to
