require 'pry'
class CashRegister
  attr_reader :discount, :total
  attr_writer :total
  attr_accessor :items
  
  
  
  def initialize(discount=0)
    @total = 0
    @discount = discount
    @items = []
  end
  
  def add_item(title, price, quantity=1)
     quantity.times do
       @items << title
     end
     @last_item_price = price
     @last_item_quantity = quantity
    @total += (price * quantity)
end
  
  def apply_discount
    if @discount != 0
      @total -= (@discount.to_f/100 * @total).to_i
      "After the discount, the total comes to $#{@total}."
    else
      "There is no discount to apply."
    end
  end
  
  def items
    @items
  end
  
  def void_last_transaction
    @total -= @last_item_price
  end
  
end
  








# class CashRegister
  
#   attr_accessor :discount, :total, :items, :price, :quantity
  

#   def initialize(discount=0)
#     @total = 0
#     @discount = discount
#     @items = []
     
#   end
  
#   def add_item(title, price, quantity=1)
    
#     quantity.times do
#       @items << title
#     end
#     @total += (price * quantity) 
#   end
 
#   def apply_discount
#     if @discount !=0 
#       @total = (@total*((100.0 - discount.to_f)/100)).to_i
#       "After the discount, the total comes to $#{@total}."
#     else
#       "There is no discount to apply."
#     end
#   end
  
# def void_last_transaction
#   binding.pry
# #total = self.total -  @total.last
# end
 
  
  
  
  
  
  
# end