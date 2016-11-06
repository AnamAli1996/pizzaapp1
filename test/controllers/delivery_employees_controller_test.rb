require 'test_helper'

class DeliveryEmployeesControllerTest < ActionController::TestCase
  setup do
    @delivery_employee = delivery_employees(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:delivery_employees)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create delivery_employee" do
    assert_difference('DeliveryEmployee.count') do
      post :create, delivery_employee: { email: @delivery_employee.email, name: @delivery_employee.name, password_digest: @delivery_employee.password_digest, phone_number: @delivery_employee.phone_number, sex: @delivery_employee.sex }
    end

    assert_redirected_to delivery_employee_path(assigns(:delivery_employee))
  end

  test "should show delivery_employee" do
    get :show, id: @delivery_employee
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @delivery_employee
    assert_response :success
  end

  test "should update delivery_employee" do
    patch :update, id: @delivery_employee, delivery_employee: { email: @delivery_employee.email, name: @delivery_employee.name, password_digest: @delivery_employee.password_digest, phone_number: @delivery_employee.phone_number, sex: @delivery_employee.sex }
    assert_redirected_to delivery_employee_path(assigns(:delivery_employee))
  end

  test "should destroy delivery_employee" do
    assert_difference('DeliveryEmployee.count', -1) do
      delete :destroy, id: @delivery_employee
    end

    assert_redirected_to delivery_employees_path
  end
end
