class DeliveryEmployee < ActiveRecord::Base
	has_secure_password
	validates_uniqueness_of:email
	has_many :customer_orders, dependent: :destroy
	validates :name, presence: true
	validates :phone_number, presence: true
	validates :email, presence: true
	validates :password, presence: true

	validates :password, length: { minimum: 10 }
	
	

end
