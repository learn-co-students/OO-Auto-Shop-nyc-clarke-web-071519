class Car


  attr_reader :make, :model
  @@all =[]

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification
    @@all << self
  end
  
  def self.all
    @@all 
  end
  
  def car_classifications
    Car.all.select { |models| models.classifcation }
  end
  
  def self.mechanic_expertise
    mechanic_expertise.map { |mechanics| car.classifcation == self}
  end
  
  def self.average_cars_owned
    cars_owned 
  end
end