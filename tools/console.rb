require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

# Test Data
# - CarOwners
harry = CarOwner.new("Harry Potter")
hermione = CarOwner.new("Hermione Granger")
ron = CarOwner.new("Ron Weasley")
neville = CarOwner.new("Neville Longbottom")
ginny = CarOwner.new("Ginny Weasley")
# - Mechanics
dumbledore = Mechanic.new("Dumbledore", "Alternative Energy")
mcgonagall = Mechanic.new("Mcgonagall", "Exotic")
snape = Mechanic.new("Snape", "Antique")
slughorn = Mechanic.new("Horace Slughorn", "Antique")
# - Car
car1 = Car.new("Toyota", "Prius", "Alternative Energy")
car1.mechanic = dumbledore
car1.car_owner = harry
car2 = Car.new("Tesla", "Model S", "Alternative Energy")
car2.mechanic = dumbledore
car2.car_owner = hermione
car3 = Car.new("Nissan", "Leaf", "Alternative Energy")
car3.mechanic = dumbledore
car3.car_owner = ron
car4 = Car.new("Audi", "e-tron", "Alternative Energy")
car4.mechanic = dumbledore
car4.car_owner = neville
car5 = Car.new("Lamborghini", "Aventador S", "Exotic")
car5.mechanic = mcgonagall
car5.car_owner = ginny
car6 = Car.new("Ferrari", "488 Spider", "Exotic")
car6.mechanic = mcgonagall
car6.car_owner = harry
car7 = Car.new("Bugatti", "Chiron", "Exotic")
car7.mechanic = mcgonagall
car7.car_owner = hermione
car8 = Car.new("Ford", "Thunderbird", "Antique")
car8.mechanic = snape
car8.car_owner = ron
car9 = Car.new("Volkswagen", "Beetle", "Antique")
car9.mechanic = snape
car9.car_owner = neville
car10 = Car.new("Chevrolet", "Bel Air", "Antique")
car10.mechanic = snape
car10.car_owner = ginny
car11 = Car.new("Lincoln", "Continental", "Antique")
car11.mechanic = snape
car11.car_owner = harry
car12 = Car.new("Tesla", "Model 3", "Alternative Energy")

binding.pry
