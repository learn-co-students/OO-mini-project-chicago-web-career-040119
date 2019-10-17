class Recipe



    @@all = []

    def initialize(title, ingredients)
        @title = title
        @ingredients = ingredients
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_popular
        recipes = RecipeCard.all
        recipes.max_by {|i| recipes.count(i)}.recipe  
    
    end


end