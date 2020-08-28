class CashRegister
  attr_accessor :total, :discount, :last_transaction_am, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(item, price, count = 1)
    @price = price
    @total += price * count
    if count > 1
      counter = 0
      while counter < count
      @items << item
      counter += 1
    end
  else
    @items << item
  end
end
def apply_discount
  if @discount > 0
    @take_off = (price * discount)/100
    @total -= @take_off
    return "After the discount, the total comes to $#{total.to_i}."
  else
    return "There is no discount to apply."
  end
end
def void_last_transaction()
  @total -= @price
end

  
end
