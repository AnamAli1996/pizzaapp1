class Customer < ActiveRecord::Base
	has_many :customerOrders, dependent: :destroy
	has_many :comments
	has_secure_password
	
	validates_uniqueness_of :email_address 
	validates :email_address,format:{with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/}
	validates :first_name, presence: true

	validates :last_name, presence: true
	validates :password, presence: true
	validates :password, length: { minimum: 10 }

	
	validates :email_address, presence: true
	validates :email_address, confirmation: { case_sensitive: false }
	 
	validates :street_address, presence: true
	validates :city, presence: true
	validates :phone_number, presence: true
	validates :phone_number, format: { with: /\d{3}-\d{3}-\d{4}/, message: "Wrong format - must be xxx-xxx-xxxx" }
	validates :postcode, presence: true

	
	

end
