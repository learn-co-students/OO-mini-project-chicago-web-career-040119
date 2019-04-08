class Ingredient

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.most_commomn_allergen
    #should return the ingredient instance that the highest number of users are allergic to
    allergy_instances = Allergy.all.map {|allergy| allergy.ingredient}
    allergy_instances.sort_by {|allergy| allergy_instances.count(allergy)}.reverse[0]
  end

end
