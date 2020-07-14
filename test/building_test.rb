require "minitest/autorun"
require "minitest/pride"
require './lib/renter'
require './lib/apartment'
require './lib/building'

class BuildingTest < MiniTest::Test

 def test_there_is_a_building
   building = Building.new
   assert_instance_of Building, building
 end

 def test_for_units
   building = Building.new
   assert_equal [], building.units
 end

 def test_it_can_add_units
   building = Building.new
   unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
   unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})

   assert_equal [unit1], building.add_unit(unit1)
   assert_equal [unit1, unit2], building.add_unit(unit2)
 end

 def test_it_for_renters
   building = Building.new
   assert_equal [], building.renters
 end

 def test_it_can_add_renters










end
