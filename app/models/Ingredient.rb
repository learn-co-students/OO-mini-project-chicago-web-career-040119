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
  end

end
