# Get a list of mechanics that have an expertise that matches the car classification

class Car

  attr_reader :make, :model, :classification
  attr_accessor :owner 

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @mechanic = mechanic
    @classification = classification
    @owner = owner
    @@all.push(self)
  end

  def self.all
    # Get a list of all cars
   @@all
  end 

  def self.classifications
    # Get a list of all car classifications
   @@all.map { |car_instance| car_instance.classification }.uniq
  end 

  def find_mechanic
   # Get a list of mechanics that have an expertise that matches the car classification
   Mechanic.all.select { |mech_inst| mech_inst.specialty == self.classification }
  end 

end
