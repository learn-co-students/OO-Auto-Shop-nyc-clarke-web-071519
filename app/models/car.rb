class Car

  attr_accessor :car_owner, :mechanic
  attr_reader :make, :model, :classification

  @@all = []

  def initialize(make, model, classification)
    @make = make
    @model = model
    @classification = classification

    @@all << self
  end

  # .all - Get a list of all cars
  def self.all
    @@all
  end

  # .classifications - Get a list of all car classifications
  def self.classifications
    self.all.map {|car| car.classification}.uniq
  end

  # #possible_mechanics - Get a list of mechanics that have an expertise that matches the car classification
  def possible_mechanics
    Mechanic.all.select {|mechanic| mechanic.specialty == self.classification}
  end

end
