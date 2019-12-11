class Building
  attr_reader :units

  def initialize
    @units = []
  end

  def add_unit(unit)
    @units << unit
  end

  def average_rent
    sum_rent = 0

    @units.each do |unit|
      sum_rent += unit.monthly_rent
    end
    avg = (sum_rent.to_f/@units.length.to_f)
  end

  def renter_with_highest_rent
    units_rented = @units.find_all do |unit|
                    unit.renter != nil
                    end
    max = units_rented.max do |a, b|
            a.monthly_rent <=> b.monthly_rent
          end
    max.renter
  end
end
