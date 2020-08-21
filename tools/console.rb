require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end



require 'pry'

Mechanic1 = Mechanic.new("Billy" , "Window Repair")
Mechanic2 = Mechanic.new("Joe", "Fixes Flat Tires")
Mechanic3 = Mechanic.new("Dave" , "Repairs broken, cracked, and scuffed windshields")

Mechanic1.car_owner =  ["Alyssa" , "Bobby" ,"Jason" ,"Lily"]
Mechanic2.car_owner =  ["Jackson" , "Rob" ,"Alexa" ,"Katie"]
Mechanic3.car_owner = ["Maria" , "John" , "Riley" , "Richard"]


Car1 = Car.new("Mercedes" , "CLA Class", "Exotic")
Car2 = Car.new("Volkswagen" , "Jetta", "Antique")
Car3 = Car.new("Dodge", "Durango" ,"Clunker")




binding.pry
