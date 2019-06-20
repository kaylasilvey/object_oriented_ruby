# "JavaScript" syntax:

produce1 = { produce: "potato", type: "yukon", price: 0.79, organic: false, per_lb: true }
produce2 = { produce: "apple", type: "gala", price: 1.29, organic: true, per_lb: false }
produce3 = { produce: "cabbage", type: "napa", price: 0.99, organic: false, per_lb: true }

puts "#{produce1[:type]} #{produce1[:produce]}s are on sale for #{produce1[:price]}."

# "Ruby" syntax:

produce1 = { :produce => "onion", :type => "red", :price => 0.75, :organic => false, :per_lb => true }
produce2 = { :produce => "lettuce", :type => "romaine", :price => 1.99, :organic => true, :per_lb => false }
produce3 = { :produce => "mushrooms", :type => "crimini", :price => 4.99, :organic => false, :per_lb => true }

puts "#{produce1[:type]} #{produce1[:produce]}s are on sale for #{produce1[:price]}."

# Using instances of a class:
module Donateable
  def donate
    @donate = true
    puts @donate
  end
end

class Produce
  attr_reader :produce, :type, :price, :organic, :input_per_lb
  attr_writer :price, :organic

  def initialize(hash_input)
    @produce = hash_input[:produce]
    @type = hash_input[:type]
    @price = hash_input[:price]
    @organic = hash_input[:organic]
    @per_lb = hash_input[:per_lb]
  end

  def print_info
    puts "#{@type} #{@produce}s are on sale for #{@price}."
  end
end

class Food < Produce
  include Donateable
  attr_reader :shelf_life
  attr_writer :shelf_life

  def shelf_life(date)
    @shelf_life = date
    puts @shelf_life
  end
end

produce1 = Produce.new({ produce: "onion", type: "red", price: 0.75, organic: false, per_lb: true })
produce2 = Produce.new({ produce: "lettuce", type: "romaine", price: 1.99, organic: true, per_lb: false })

produce1.print_info
produce2.print_info

produce1.price = (1.50)
produce1.print_info

puts produce2.price
puts produce2.type
puts produce2.organic
