class CashRegister
  attr_accessor :total, :discount, :last_transaction_amount, :items
  def initialize(discount = 0)
    @total = 0
    @discount = discount
    @items = []
  end
  def add_item(title,price,quantity = 1)
    if quantity>1
      i=0
      while i<quantity
        @items << title
        i+=1
      end
    else
      @items << title
    end
    @total += price*quantity
    @last_transaction_amount = @total
    @total
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
