class Side < ActiveRecord::Base 
	 has_many :orders,dependent:  :destroy
	 
	validates_uniqueness_of :side_name
	validates :side_name, presence: true
	validates :price, presence: true
	validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}
	validates :image, presence: true
end
