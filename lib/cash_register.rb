class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def total
    @total
  end
  
  def add_item(i, v, q = 1)
    a = v * q
    @total += a
    q.times {@items << i}
  end
    
  def apply_discount
    if @discount == 0
      puts "There is no discount to apply."
    else
      a = 100.0 - @discount
      b = a / 100.0
      c = @total * b
      @total = c
      puts "After the discount, the total comes to $#{total}."
    end
  end
    
  def items
    @items
  end
    
  def void_last_transaction
    
  end
end
  
