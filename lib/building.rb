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
end
