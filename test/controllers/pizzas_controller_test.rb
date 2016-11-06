require 'test_helper'

class PizzasControllerTest < ActionController::TestCase
  setup do
    @pizza = pizzas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:pizzas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create pizza" do
    assert_difference('Pizza.count') do
      post :create, pizza: { description: @pizza.description, gluten_free: @pizza.gluten_free, image: @pizza.image, pizza_name: @pizza.pizza_name, pizza_size: @pizza.pizza_size, price: @pizza.price, spice_level: @pizza.spice_level, vegetarian: @pizza.vegetarian }
    end

    assert_redirected_to pizza_path(assigns(:pizza))
  end

  test "should show pizza" do
    get :show, id: @pizza
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @pizza
    assert_response :success
  end

  test "should update pizza" do
    patch :update, id: @pizza, pizza: { description: @pizza.description, gluten_free: @pizza.gluten_free, image: @pizza.image, pizza_name: @pizza.pizza_name, pizza_size: @pizza.pizza_size, price: @pizza.price, spice_level: @pizza.spice_level, vegetarian: @pizza.vegetarian }
    assert_redirected_to pizza_path(assigns(:pizza))
  end

  test "should destroy pizza" do
    assert_difference('Pizza.count', -1) do
      delete :destroy, id: @pizza
    end

    assert_redirected_to pizzas_path
  end
end
