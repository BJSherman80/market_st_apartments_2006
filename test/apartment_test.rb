require "minitest/autorun"
require "minitest/pride"
require './lib/renter'
require './lib/apartment'



  def test_there_is_a_unit
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})

    assert_instance_of Apartment, unit1
  end

  def test_it_has_a_unit_number
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal "A1", unit1.number
  end

  def test_it_has_monthly_rent
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1200, unit1.monthly_rent
  end

  def test_it_has_bathrooms
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1, unit1.bathrooms
  end

  def test_it_has_bedrooms
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_equal 1, unit1.bedrooms
  end

  def test_it_has_renter
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    assert_nil(unit1.renter)
  end

  def test_it_can_add_renter
    unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    renter1 = Renter.new("Jessie")
    unit1.add_renter(renter1)

    assert_equal renter1, unit1.add_renter(renter1)
  end

end
