class Customer

  attr_accessor :name, :age
  attr_reader :waiters, :meals

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
    @meals = []
    @waiters = []
  end

  def self.all
    @@all
  end

  def new_meal(waiter, tot, tip)
    @meals << Meal.new(waiter, self, tot, tip)
    @waiters << waiter
    waiter.meals << @meals.last
  end
end 