class Park
  attr_reader :name, :admission_price, :vehicles

  def initialize(name, admission_price)
    @name = name
    @admission_price = admission_price
    @vehicles = []
  end

  def add_vehicle(vehicle)
    @vehicles << vehicle
  end

  def guests
    @vehicles.map do |vehicle|
      vehicle.passengers.map do |passenger|
        passenger
      end
    end.flatten
  end

  def revenue
    admission_total = 0

    guests.each {|guest| admission_total += @admission_price if guest.adult?}

    admission_total
  end
end