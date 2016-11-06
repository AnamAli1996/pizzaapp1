class Dessert < ActiveRecord::Base
	has_many :orders,dependent:  :destroy
	
	validates :dessert_name, presence: true
	validates :dessert_name, uniqueness: true
	
	validates :price, presence: true
	validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0, :less_than => 100}
end
