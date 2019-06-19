class Transportaion_characteristics
  def initialize
    @speed = 0
    @direction = "north"
  end

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car < Transportaion_characteristics
  attr_reader :fuel, :make, :model

  def initialize(hash_input)
    super()
    @fuel = hash_input[:fuel]
    @make = hash_input[:make]
    @model = hash_input[:model]
  end

  def honk_horn
    puts "Beeeeeeep!"
  end
end

class Bike < Transportaion_characteristics
  attr_reader :type, :weight

  def initialize(hash_input)
    super()
    @type = hash_input[:type]
    @weight = hash_input[:weight]
  end

  def ring_bell
    puts "Ring ring!"
  end
end

bike = Bike.new({ type: "Schwinn", weight: "12lb" })
car = Car.new({ fuel: "35", make: "Chevy", model: "Impala" })

p bike.accelerate
p car.accelerate
bike.ring_bell
car.honk_horn
p bike.type
p car.make
