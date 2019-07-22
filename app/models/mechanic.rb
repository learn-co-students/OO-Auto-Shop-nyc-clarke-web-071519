class Mechanic

  attr_reader :name, :specialty

  @@all = []

  def initialize(name, specialty)
    @name = name
    @specialty = specialty

    @@all << self
  end

  # .all - Get a list of all mechanics
  def self.all
    @@all
  end

  # #cars - Get a list of all cars that a mechanic services
  def cars
    Car.all.select {|car| car.mechanic == self}
  end

  # #car_owners - Get a list of all the car owners that go to a specific mechanic
  def car_owners
    cars.map {|car| car.car_owner}
  end

  # - Get a list of the names of all car owners who go to a specific mechanic
  def car_owner_names
    car_owners.map {|car_owner| car_owner.name}
  end

end
