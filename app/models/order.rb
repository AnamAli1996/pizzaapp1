class Order < ActiveRecord::Base
	
	belongs_to :pizza
	belongs_to :side
	belongs_to :dessert
	belongs_to :drink
	
	has_many :customerOrders, dependent: :destroy
	validates :pizza_quantity, numericality: {:greater_than => 0 }
	validates :side_quantity, numericality: {:greater_than => 0 }
	validates :drink_quantity, numericality: {:greater_than => 0 }
	validates :dessert_quantity, numericality: {:greater_than => 0 }
	
	validates :pizza_quantity, presence: true
	validates :side_quantity, presence: true
	validates :drink_quantity, presence: true
	validates :dessert_quantity, presence: true
end
