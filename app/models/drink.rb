class Drink < ActiveRecord::Base
	has_many :orders,dependent:  :destroy
	
	validates_uniqueness_of :drink_brand
	validates :drink_brand, presence: true
	validates :price, presence: true
	validates :price, numericality: {:greater_than => 0 }
	
	
end
