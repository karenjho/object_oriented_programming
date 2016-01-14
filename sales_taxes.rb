class Good
  attr_accessor :name, :quantity, :unit_price
  attr_reader :tax_rate, :import_duty

  def initialize(name, quantity=1, unit_price)
    @name = name
    @quantity = quantity
    @unit_price = unit_price
    @tax_rate = 0.10
    @import_duty = 0.05
  end
end

class Exempt < Good
  def initialize
    @tax_rate = 0
  end
end
