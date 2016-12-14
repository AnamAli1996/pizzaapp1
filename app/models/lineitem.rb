class Lineitem < ActiveRecord::Base
	belongs_to :cart
	belongs_to :pizza
	belongs_to :order

end
