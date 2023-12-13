require './lib/passenger'

RSpec.describe Passenger do
  it 'should exists' do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})

    expect(charlie).to be_instance_of Passenger
  end

  it "should have a name and age" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})

    expect(charlie.name).to eq("Charlie")
    expect(charlie.age).to eq(18)
  end

  it "should have a adult? method" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})

    expect(charlie.adult?).to eq(true)
    expect(taylor.adult?).to eq(false)
  end

  it "should have a driver? method" do
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})

    expect(charlie.driver?).to eq(false)

    charlie.drive

    expect(charlie.driver?).to eq(true)
  end
end