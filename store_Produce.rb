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
