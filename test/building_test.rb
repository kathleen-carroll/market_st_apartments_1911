require "minitest/autorun"
require "minitest/pride"
require "./lib/apartment"
require "./lib/renter"
require "./lib/building"

class BuildingTest < Minitest::Test
  def setup
    @building = Building.new
    @unit1 = Apartment.new({number: "A1", monthly_rent: 1200, bathrooms: 1, bedrooms: 1})
    @unit2 = Apartment.new({number: "B2", monthly_rent: 999, bathrooms: 2, bedrooms: 2})
    #@renter1 = Renter.new("Jessie")
  end

  def test_it_exists
    assert_instance_of Building, @building
  end

  def test_it_can_add_units
    assert_equal [], @building.units

    @building.add_unit(@unit1)
    @building.add_unit(@unit2)
    assert_equal [@unit1, @unit2], @building.units
  end

  def test_it_can_return_average_rent
    @building.add_unit(@unit1)
    @building.add_unit(@unit2)

    assert_equal 1099.5, @building.average_rent
  end
end
