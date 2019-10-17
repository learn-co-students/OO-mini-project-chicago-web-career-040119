class User

attr_accessor :name, :age

@@all = []

def initialize(name, age)
    @name = name
    @age = age
    @@all << self
end

def self.all
    @@all
end

def recipes
    cards = RecipeCard.all
    cards.select do |card|
        card.user == self
    end
end

def add_recipe_card(recipe, rating)
    RecipeCard.new(recipe, self, rating)
end

def declare_allergy(ingredient)
    Allergy.new(ingredient, self)
end

def allergens
    allergies = Allergy.all
    info = allergies.select do |a| 
    a.user == self 
    end

    info == [] ? "No Allergies!" : info
    
end


def get_recipes
    top_three = []
    recipes = RecipeCard.all
    my_cards = recipes.select {|c| c.user == self}
end

def top_three_recipes
    ratings = get_recipes.sort_by{|c| c.rating }.reverse
    ratings[0..2]
end

def most_recent_recipe
    get_recipes.sort_by{|c| c.date }.pop
end

def safe_recipes
    allergens.each {|allergy| p allergy}    
end


end