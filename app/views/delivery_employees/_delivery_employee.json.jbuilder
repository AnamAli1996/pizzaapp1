json.extract! delivery_employee, :id, :name, :phone_number, :sex, :email, :password_digest, :created_at, :updated_at
json.url delivery_employee_url(delivery_employee, format: :json)