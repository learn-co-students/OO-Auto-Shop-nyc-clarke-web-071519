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
    Medhanics.all.select {|mechanic| mechanic.car_owner == self}
  end
  
end


