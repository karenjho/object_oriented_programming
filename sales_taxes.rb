class Good
  attr_accessor :name, :quantity, :unit_price
  attr_reader :tax_rate

  def initialize(name, quantity=1, unit_price)
    @name = name
    @quantity = quantity
    @unit_price = unit_price
  end

end
