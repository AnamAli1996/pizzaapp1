class Order < ActiveRecord::Base
	has_many :lineitems
	
	def add_lineitems_from_cart(cart)
		cart.lineitems.each do |item|
			item.cart_id = nil
			lineitems << item
		end
	end		
	
	def total_price(order)
		order.total = order.lineitems.inject(0){|sum, p| sum +(p.pizza.price * p.quantity)}
	end
	
	def set_delivery
		self.delivery = false
	end	
end
