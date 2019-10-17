class Ingredient

attr_accessor :name, :category


@@all = []

    def initialize(name, category)
        @name = name
        @category = category
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        allergies = Allergen.all
        a = allergies.map {|allergen| allergen.ingredient}
        a.max_by {|i| a.count(i)}.a  
    end

end
