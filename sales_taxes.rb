# define Good class with name, quantity, price, tax rate and import duty
class Good
  attr_accessor :name, :quantity, :unit_price
  attr_reader :tax_rate, :import_duty

  def initialize(name, quantity=1, unit_price)
    @name = name
    @quantity = quantity.to_i
    @unit_price = unit_price.to_i
    @tax_rate = 0.10
    @import_duty = 0.05
  end

# method to calculate taxes on Good
  def tax_calc
    tax = @quantity * @unit_price * @tax_rate
  end

# method to calculate import duty on Good
  def import_calc
    import = @quantity * @unit_price * @import_duty
  end
end

# define Exempt class as sub-class of Good
class Exempt < Good
  def initialize
    # set Exempt tax rate at 0
    @tax_rate = 0
  end
end

class NonExempt < Good
  def initialize
  end
end

def input
  
end
