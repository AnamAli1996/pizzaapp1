class Drink < ActiveRecord::Base
	has_many :orders,dependent:  :destroy
	has_many :lineitems
	validates_uniqueness_of :drink_brand
	validates :drink_brand, presence: true
	validates :price, presence: true
	validates :price, numericality: {:greater_than => 0 }
	
	def self.search(query)
		where("drink_brand LIKE ?", "%#{query}%")
	end
	
	def apply_discount(drink,discount)
		if !drink.nil?
			drink.price = drink.price - drink.price * discount
		end
	end
end
