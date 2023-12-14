require "test_helper"

class ShopCartControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get shop_cart_show_url
    assert_response :success
  end
end
