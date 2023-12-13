class Vehicle
  attr_reader :year, :make, :model, :passengers

  def initialize(year, make, model)
    @year = year
    @make = make
    @model = model
    @bool = false
    @passengers = []
  end

  def speeding?
    @bool
  end

  def speed
    @bool = true
  end

  def add_passenger(passenger)
    @passengers << passenger
  end

  def num_adults
    number_of_adults = 0

    @passengers.each { |passenger| number_of_adults += 1 if passenger.adult?}

    number_of_adults
  end
end
