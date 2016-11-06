class Pizza < ActiveRecord::Base
	has_many :orders,dependent:  :destroy
	has_many :comments, :dependent => :destroy
	validates_uniqueness_of :pizza_name
	validates :pizza_name, presence: true
	validates :price, presence: true
	validates :pizza_size, presence: true
	validates :pizza_size, numericality: { only_integer: true }
	validates :pizza_size, numericality: {:greater_than => 0 }
	validates :price, :format => { :with => /\A\d+(?:\.\d{0,2})?\z/ }, :numericality => {:greater_than => 0}
	validates :spice_level, presence: true
	validates :image, presence: true
	
	def average_stars
		comments.average(:stars)
	end	
end
