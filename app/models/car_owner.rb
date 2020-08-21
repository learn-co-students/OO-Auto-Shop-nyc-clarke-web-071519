class CarOwner
  attr_accessor :car, :mechanic
  attr_reader :name
  @@all = [ ]
  
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
  
  def specific_owenr
    Mechanic.all.select {|mechanic| mechanic.name== self}
  end
  
   def self.average_cars_owned
    all_car_totals = CarOwner.all.map{|owner| owner.owner_total}
    all_car_totals.reduce {|result, n| result + n} / all_car_totals.length.to_f
  end
  
end


