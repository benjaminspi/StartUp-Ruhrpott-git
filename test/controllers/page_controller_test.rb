require 'test_helper'

class PageControllerTest < ActionController::TestCase
  test "should get Startseite" do
    get :Startseite
    assert_response :success
  end

  test "should get StartUps" do
    get :StartUps
    assert_response :success
  end

  test "should get Funding" do
    get :Funding
    assert_response :success
  end

end
