class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name

    @@all << self
  end

  # .all - Get a list of all owners
  def self.all
    @@all
  end

  # #cars - Get a list of all the cars that a specific owner has
  def cars
    Car.all.select {|car| car.car_owner == self}
  end

  # #mechanics - Get a list of all the mechanics that a specific owner goes to
  def mechanics
    cars.map {|car| car.mechanic}
  end

  # .average_cars_per_owner - Get the average amount of cars owned for all owners
  def self.average_cars_per_owner
    cars_with_owners = Car.all.select {|car| car.car_owner}
    owners_with_cars = CarOwner.all.select {|car_owner| car_owner.cars.length > 0}
    cars_with_owners.length.to_f / owners_with_cars.length.to_f
  end

end
