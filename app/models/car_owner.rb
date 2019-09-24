
class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all.push(self)
  end

  def self.all 
    # Get a list of all owners
    @@all 
  end 

  def my_cars
   # Get a list of all the cars that a specific owner has
   Car.all.select { |car_instance| car_instance.owner == self }
  end 

  def self.avg_cars_owned
   # Get the average amount of cars owned for all owners
   owner_count = @@all.length
   car_count = Car.all.length.to_f
   car_count / owner_count
  end

end
