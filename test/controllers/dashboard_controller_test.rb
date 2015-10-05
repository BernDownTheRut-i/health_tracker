require 'test_helper'

class DashboardControllerTest < ActionController::TestCase

  test "should get index" do
    get :index
    assert_response :success
  end

  test "show todays metrics" do
    get :index
    assert_response :success

    assert response.body.include?("jogging")
    assert response.body.include?("1500")
  end

end
