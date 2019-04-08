require "pry"

class RecipeCard
  attr_accessor :user, :recipe, :rating
  attr_reader :date

  @@all = []

  def self.all
    @@all
  end

  def initialize(user, recipe, rating, date = Time.now)
    @date = date
    @user = user
    @recipe = recipe
    @rating = rating

    @@all << self
  end
end
