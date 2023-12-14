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

  def patrons
    patrons_data = {}

    patrons_data["names_of_attendees"] = []
    patrons_data["minors"] = []
    patrons_data["adults"] = []


    guests.each do |guest|
      patrons_data["names_of_attendees"] << guest.name
      patrons_data["minors"] << guest.name if !guest.adult?
      patrons_data["adults"] << guest.name if guest.adult?
    end

    patrons_data
  end
end