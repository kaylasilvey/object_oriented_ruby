# "JavaScript" syntax:

produce1 = { produce: "potato", type: "yukon", price: 0.79, organic: false, per_lb: true}
produce2 = { produce: "apple", type: "gala", price: 1.29, organic: true, per_lb: false}
produce3 = { produce: "cabbage", type: "napa", price: 0.99, organic: false, per_lb: true}

puts "#{produce1[:type]} #{produce1[:produce]}s are on sale for #{produce1[:price]}."

# "Ruby" syntax:

produce1 = { :produce => "onion", :type => "red", :price => 0.75, :organic => false, :per_lb => true}
produce2 = { :produce => "lettuce", :type => "romaine", :price => 1.99, :organic => true, :per_lb => false}
produce3 = { :produce => "mushrooms", :type => "crimini", :price => 4.99, :organic => false, :per_lb => true}

puts "#{produce1[:type]} #{produce1[:produce]}s are on sale for #{produce1[:price]}."

# Using instances of a class:

class Produce
  attr_reader :produce, :type, :price, :organic, :input_per_lb
  attr_writer :price, :organic

  def initialize(input_produce, input_type, input_price, input_organic, input_per_lb)
    @produce = input_produce
    @type = input_type
    @price = input_price
    @organic = input_organic
    @per_lb = input_per_lb
  end

  def produce
    return @produce
  end

  def type
    return @type
  end

  def price
    return @price
  end

  def edit_price(input_price)
    @price = input_price
  end

  def organic
    return @organic
  end

  def change_organic(input_organic)
    @organic = input_organic
  end

  def per_lb
    return @per_lb
  end

  def print_info
    puts "#{@type} #{@produce}s are on sale for #{@price}."
  end
end

produce1 = Produce.new("onion", "red", "0.75", "false", "true")
produce2 = Produce.new("lettuce", "romaine", "1.99", "true", "false")

produce1.print_info
produce2.print_info

produce1.edit_price(1.50)
produce1.print_info

puts produce2.price
puts produce2.type
puts produce2.organic
