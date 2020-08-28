class ClassRegister
  attr_accessor :total, :discount, :price, :items
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
      
  
  
end
