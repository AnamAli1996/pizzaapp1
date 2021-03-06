require 'test_helper'

class SidesControllerTest < ActionController::TestCase
  setup do
    @side = sides(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sides)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create side" do
    assert_difference('Side.count') do
      post :create, side: { description: @side.description, gluten_free: @side.gluten_free, image: @side.image, price: @side.price, side_name: @side.side_name, vegetarian: @side.vegetarian }
    end

    assert_redirected_to side_path(assigns(:side))
  end

  test "should show side" do
    get :show, id: @side
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @side
    assert_response :success
  end

  test "should update side" do
    patch :update, id: @side, side: { description: @side.description, gluten_free: @side.gluten_free, image: @side.image, price: @side.price, side_name: @side.side_name, vegetarian: @side.vegetarian }
    assert_redirected_to side_path(assigns(:side))
  end

  test "should destroy side" do
    assert_difference('Side.count', -1) do
      delete :destroy, id: @side
    end

    assert_redirected_to sides_path
  end
end
