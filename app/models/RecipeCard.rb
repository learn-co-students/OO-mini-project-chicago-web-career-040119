require "pry"

class RecipeCard
  #Class variables ################
  @@all = []

  #Instance variables #############
  attr_accessor :user, :recipe, :rating
  attr_reader :date
  #Class methods ################
  def self.all
    @@all
  end

  #Instance methods #############
  def initialize(user, recipe, rating, date = Time.now)
    #Instance  #############
    @date = date
    #rating is scale 1 - 5
    @user = user
    @recipe = recipe
    @rating = rating
    #Class ################
    @@all << self
  end

# RecipeCard#date should return the date of the entry
# RecipeCard#rating should return the rating (an integer) a user has given their entry
# RecipeCard#user should return the user to which the entry belongs
# RecipeCard#recipe should return the recipe to which the entry belongs


end
