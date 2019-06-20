require "./store_Produce.rb"
require "./store_modules.rb"

class Food < Produce
  include Donateable
  attr_reader :shelf_life
  attr_writer :shelf_life

  def shelf_life(date)
    @shelf_life = date
    puts @shelf_life
  end
end
