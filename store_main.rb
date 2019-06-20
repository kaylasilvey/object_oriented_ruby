require "./store_Produce.rb"
require "./store_modules.rb"
require "./store_Food.rb"

produce1 = Produce.new({ produce: "onion", type: "red", price: 0.75, organic: false, per_lb: true })
produce2 = Produce.new({ produce: "lettuce", type: "romaine", price: 1.99, organic: true, per_lb: false })

produce1.print_info
produce2.print_info

produce1.price = (1.50)
produce1.print_info

puts produce2.price
puts produce2.type
puts produce2.organic
