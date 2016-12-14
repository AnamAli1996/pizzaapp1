class Usermailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.usermailer.welcome.subject
  #
  def welcome(user)
	@customer = user
	mail(:to => user.email_address, :subject=>"Thank you for registering to pizzeria")
	end	
 
end
