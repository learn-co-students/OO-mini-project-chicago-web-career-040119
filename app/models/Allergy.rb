## Joiner ofr User and Ingredient

class Allergy
  attr_accessor :user, :ingredient
  attr_reader :name

  @@all = []

  def initialize(user, ingredient, name)
    @name = name
    @user = user
    @ingredient = ingredient
    @@all << self
  end

  def self.all
    @@all
  end


end
