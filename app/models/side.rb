class Side < ActiveRecord::Base 
	 has_many :orders,dependent:  :destroy
	 has_many :lineitems
	validates_uniqueness_of :side_name
	validates :side_name, presence: true
	validates :price, presence: true
	validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}
	validates :image, presence: true
	
	def self.search(query)
		where("side_name LIKE ?", "%#{query}%")
	end
	
	def apply_discount(side,discount)
		if !side.nil?
			side.price = side.price - side.price * discount
		end
	end
end
