
# Get a list of the names of all car owners who go to a specific mechanic

class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all.push(self)
end

 def self.all 
  # Get a list of all mechanics
  @@all 
 end 

 def cars_i_service
  Car.all.select { |car_instance| car_instance.classification == @specialty }
 end 

 def customers 
  # Get a list of all the car owners that go to a specific mechanic
  cars_i_service.map { |car_instance| car_instance.owner }.uniq
 end 

 def customer_names
  # Get a list of the names of all car owners who go to a specific mechanic
  self.customers.map { |car_owner_inst| car_owner_inst.name }
 end 

end
