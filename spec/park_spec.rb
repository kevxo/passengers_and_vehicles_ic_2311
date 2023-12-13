require './lib/vehicle'
require './lib/passenger'
require './lib/park'

RSpec.describe Park do
  it "should exits" do
    park = Park.new("Bayfront Park", 25)

    expect(park).to be_instance_of Park
  end

  it "should have a name and admission price" do
    park = Park.new("Bayfront Park", 25)

    expect(park.name).to eq "Bayfront Park"
    expect(park.admission_price).to eq(25)
  end

  it "can list the vehicles that entered the park" do
    park = Park.new("Bayfront Park", 25)

    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle_2 = Vehicle.new("2001", "Toyota", "Tundra")
    vehicle_3 = Vehicle.new("2001", "Nissan", "Altima")


    expect(park.vehicles).to eq([])

    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)
    park.add_vehicle(vehicle_3)

    expect(park.vehicles).to eq([vehicle_1, vehicle_2, vehicle_3])
  end

  it 'can list all the passengers' do
    park = Park.new("Bayfront Park", 25)

    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle_2 = Vehicle.new("2001", "Toyota", "Tundra")
    vehicle_3 = Vehicle.new("2001", "Nissan", "Altima")

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 16})

    vehicle_1.add_passenger(charlie)
    vehicle_2.add_passenger(jude)
    vehicle_3.add_passenger(taylor)

    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)
    park.add_vehicle(vehicle_3)

    expect(park.guests).to eq([charlie, jude, taylor])
  end

  it "should calculate revenue" do
    park = Park.new("Bayfront Park", 25)

    vehicle_1 = Vehicle.new("2001", "Honda", "Civic")
    vehicle_2 = Vehicle.new("2001", "Toyota", "Tundra")
    vehicle_3 = Vehicle.new("2001", "Nissan", "Altima")

    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 16})

    vehicle_1.add_passenger(charlie)
    vehicle_2.add_passenger(jude)
    vehicle_3.add_passenger(taylor)

    park.add_vehicle(vehicle_1)
    park.add_vehicle(vehicle_2)
    park.add_vehicle(vehicle_3)

    expect(park.revenue).to eq(50)
  end
end