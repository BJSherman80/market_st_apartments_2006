require './lib/renter'
require './lib/apartment'

class Building
  attr_reader :units, :renters
  def initialize
    @units = []
    @renters = []
  end

  def add_unit(unit)
    @units << unit
  end

  # def add_renter(renter)
  #   @renters << @unit[:renter]= (renter)
  # end
  def renters
    @renters << units.renter
  end


end
