require "minitest/autorun"
require "minitest/pride"
require './lib/renter'

class RenterTest < MiniTest::Test

  def test_there_is_a_renter
    renter1 = Renter.new("Jessie")

    assert_instance_of Renter, renter1
  end

  def test_renter_has_a_name
    renter1 = Renter.new("Jessie")

    assert_equal "Jessie", renter1.name
  end
end
