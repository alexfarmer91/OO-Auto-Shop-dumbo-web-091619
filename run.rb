require 'pry'
require_relative './app/models/mechanic.rb'
require_relative './app/models/car_owner.rb'
require_relative './app/models/car.rb'

jim = Mechanic.new("Greg", "Sports Car")
bob = Mechanic.new("Greg", "Muscle")
greg = Mechanic.new("Greg", "Luxury")

tim = CarOwner.new("Tim")
jess = CarOwner.new("Jess")
david = CarOwner.new("David")
tiffany = CarOwner.new("Tiffany")


corvette = Car.new("Chevrolet", "Corvette", "Sports Car", david, jim)
porsche = Car.new("Porsche", "911", "Sports Car", tim, jim)
gtr = Car.new("Nissan", "GTR", "Sports Car", david, jim)
mercedes = Car.new("Mercedes-Benz", "E550", "Luxury", jess, greg)
bmw = Car.new("BMW", "M3", "Luxury", tiffany, greg)
mustang = Car.new("Ford", "Mustang", "Muscle", tim, bob)
camaro = Car.new("Chevrolet", "Camaro", "Muscle", jess, bob)

binding.pry 
0

