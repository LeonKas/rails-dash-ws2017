class Order < ApplicationRecord
  belongs_to :customer
  has_many :line_items
  has_many :pumpkins, through: :line_items
  # has_many(:pumpkins, {through: :line_items})
    
    def totalPrice
        
       li_price_total = 0
    line_items.each do |item|
        li_price_total = li_price_total + item.price
    end 
    return li_price_total
    
    end
end
