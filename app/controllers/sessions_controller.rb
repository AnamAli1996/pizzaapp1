class SessionsController < ApplicationController
  def new
  end

  def create
	customer = Customer.find_by_email_address(params[:email_address])
	if customer && customer.authenticate(params[:password])
		session[:customer_id] = customer.id
		redirect_to session[:return_to] || root_path
	else
		flash.now[:error]  = "invalid email/password combination."
		render 'new'
	end	
  end

  def destroy
	if signed_in?
		session[:customer_id] = nil
	else
		flash[:notice] = "You need to log in first"
	end
	redirect_to login_path
  end
  
  def new2
  end
  
  def create2
	delivery_employee = DeliveryEmployee.find_by_email(params[:email])
	if delivery_employee && delivery_employee.authenticate(params[:password])
		session[:delivery_employee_id]= delivery_employee.id
		redirect_to session[:return_to] || pages_home_path
	else	
		redirect_to login2_path, alert: "invalid user/password"
	end	
  end
  
  def destroy2
	session[:delivery_employee_id] = nil
	redirect_to root_path, notice: "Logged out"
  end
  end

