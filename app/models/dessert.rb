class Dessert < ActiveRecord::Base
	has_many :orders,dependent:  :destroy
	has_many :lineitems
	validates :dessert_name, presence: true
	validates :dessert_name, uniqueness: true
	
	validates :price, presence: true
	validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, :less_than => 100}

	def self.search(query)
		where("dessert_name LIKE ?","%#{query}%")
	end
	
	def apply_discount(dessert,discount)
		if !dessert.nil?
			dessert.price = dessert.price - dessert.price * discount
		end
	end
end