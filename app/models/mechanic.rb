class Mechanic

  attr_reader :name, :specialty
  attr_accessor :car , :car_owner

@@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end
  
def self.all
  @@all
end 
  def cars_mechanic_services
    Mechanic.all.select { |cars| Mechanic.car == self }
  end
  
  
 def owners
  Mechanic.map { |mechanic| mechanic.car_owners}
end
 
  def names
    Mechanic.map {|names| names.mechanic}
  end

end
