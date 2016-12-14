module ApplicationHelper

def signed_in?
	if session[:customer_id].nil?
		return
	else
		@current_customer = Customer.find_by_id(session[:customer_id])
	end	
end	

def signed_in2?
	if session[:delivery_employee_id].nil?
		return
	else
		@current_delivery_employee = DeliveryEmployee.find_by_id(session[:delivery_employee_id])
	end	
end

def workingfor(date_joined)
		today = Date.today
		period = today.year - date_joined.year
		period
end

def euro(amount)
	number_to_currency(amount, :unit=> '€')
end	

def yesno(vegetarian)
		if vegetarian	
			return "Yes"
		else
			return "No"
		end
	end

def glutenfree(gluten_free)
		if gluten_free	
			return "Yes"
		else
			return "No"
		end
	end

end
