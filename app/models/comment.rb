class Comment < ActiveRecord::Base
	belongs_to :customer
	belongs_to :pizza
	belongs_to :side
	belongs_to :dessert 
	belongs_to :drink
end
