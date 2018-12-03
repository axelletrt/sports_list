require 'test_helper'

class StaticControllerTest < ActionDispatch::IntegrationTest
  test "should get Index" do
    get static_Index_url
    assert_response :success
  end

end
