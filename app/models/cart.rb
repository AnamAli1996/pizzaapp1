class Cart < ActiveRecord::Base
	has_many :lineitems, :dependent => :destroy
	
	def add_pizza(pizza_id)
		current_item = lineitems.find_by_pizza_id(pizza_id)
		if current_item
			current_item.quantity +=1
		else
			current_item = lineitems.new(pizza_id:pizza_id)
			current_item.quantity = 1
		end
		current_item
	end

end
