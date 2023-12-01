require "test_helper"

class UserControllerTest < ActionDispatch::IntegrationTest
  test "should get controller" do
    get user_controller_url
    assert_response :success
  end
end
