require "test_helper"

class TownsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get towns_show_url
    assert_response :success
  end
end
