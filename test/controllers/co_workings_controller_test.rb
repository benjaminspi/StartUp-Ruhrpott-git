require 'test_helper'

class CoWorkingsControllerTest < ActionController::TestCase
  setup do
    @co_working = co_workings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:co_workings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create co_working" do
    assert_difference('CoWorking.count') do
      post :create, co_working: { address: @co_working.address, description: @co_working.description, name: @co_working.name, picture: @co_working.picture, url: @co_working.url }
    end

    assert_redirected_to co_working_path(assigns(:co_working))
  end

  test "should show co_working" do
    get :show, id: @co_working
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @co_working
    assert_response :success
  end

  test "should update co_working" do
    patch :update, id: @co_working, co_working: { address: @co_working.address, description: @co_working.description, name: @co_working.name, picture: @co_working.picture, url: @co_working.url }
    assert_redirected_to co_working_path(assigns(:co_working))
  end

  test "should destroy co_working" do
    assert_difference('CoWorking.count', -1) do
      delete :destroy, id: @co_working
    end

    assert_redirected_to co_workings_path
  end
end
