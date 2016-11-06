class CustomerOrder < ActiveRecord::Base
 belongs_to :order
 belongs_to :delivery_employee
 belongs_to :customer
end
