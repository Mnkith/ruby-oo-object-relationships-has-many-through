class Waiter

  attr_accessor :name, :yrs_experience
  attr_reader :meals
  
  @@all = []

  def initialize(name, yrs_experience)
    @name = name
    @yrs_experience = yrs_experience
    @@all << self
    @meals = []
  end

  def self.all
    @@all
  end

  def new_meal(cust, tot, tip)
    Meal.new(self, cust, tot, tip)
  end

  def best_tipper
    @meals.max{|a, b| a.tip <=> b.tip}.customer
  end
end