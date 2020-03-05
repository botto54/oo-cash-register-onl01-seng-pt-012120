class CashRegister
  attr_accessor :total, :discount, :items
  
  def initialize(discount = nil)
    @total = 0
    @discount = discount if discount != nil
    @items = []
  end
  
  def add_item(name, price, quantity = 1)
    self.total += price * quantity
    quantity.times do
      @items << name
    end
  end
  
  def apply_discount
    if discount
      self.total = self.total * (self.total - self.discount/100)
      return "After the discount, the total comes to $#{self.total}."
    else
      return "There is no discount to apply."
    end
  end
  
  # def items
  #   @items
  # end
  
  def void_last_transaction
    
  end
  
end