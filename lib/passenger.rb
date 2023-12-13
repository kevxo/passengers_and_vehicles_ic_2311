class Passenger
  attr_reader :name, :age, :drive

  def initialize(data)
    @name = data["name"]
    @age = data["age"]
    @bool = false
  end

  def adult?
    @age >= 18
  end


  def driver?
    @bool
  end

  def drive
    @bool = true
  end
end