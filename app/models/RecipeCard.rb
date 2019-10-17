class RecipeCard

    attr_accessor :recipe, :user, :rating
    attr_reader :date

    @@all = []

    def initialize (recipe, user, date=Time.new, rating)
        @recipe = recipe
        @user = user
        @date = date
        @rating = rating
        @@all << self
    end

    def self.all
        @@all
    end




end