require 'test_helper'

class ProductOfTheWeeksControllerTest < ActionController::TestCase
  setup do
    @product_of_the_week = product_of_the_weeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:product_of_the_weeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product_of_the_week" do
    assert_difference('ProductOfTheWeek.count') do
      post :create, product_of_the_week: { date: @product_of_the_week.date, description: @product_of_the_week.description, link: @product_of_the_week.link, name: @product_of_the_week.name, picture: @product_of_the_week.picture, published: @product_of_the_week.published }
    end

    assert_redirected_to product_of_the_week_path(assigns(:product_of_the_week))
  end

  test "should show product_of_the_week" do
    get :show, id: @product_of_the_week
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product_of_the_week
    assert_response :success
  end

  test "should update product_of_the_week" do
    patch :update, id: @product_of_the_week, product_of_the_week: { date: @product_of_the_week.date, description: @product_of_the_week.description, link: @product_of_the_week.link, name: @product_of_the_week.name, picture: @product_of_the_week.picture, published: @product_of_the_week.published }
    assert_redirected_to product_of_the_week_path(assigns(:product_of_the_week))
  end

  test "should destroy product_of_the_week" do
    assert_difference('ProductOfTheWeek.count', -1) do
      delete :destroy, id: @product_of_the_week
    end

    assert_redirected_to product_of_the_weeks_path
  end
end
