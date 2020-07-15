require './lib/renter'
require './lib/apartment'

class Building
  attr_reader :units
  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end


  def renters
    renters_names = []
     units.each do |unit|
       if unit.renter
         renters_names << unit.renter.name
       end
    end
    renters_names
  end

  def average_rent
    unit_rent = 0
    units.each do |unit|
      unit_rent += unit.monthly_rent
    end
    unit_rent / units.count.to_f
  end

  def rented_units
    units_rented = []
    units.each do |unit|
      if unit.renter
        units_rented << unit
      end
    end
  units_rented
  end
end
