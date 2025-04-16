require "test_helper"

class KpControllerTest < ActionDispatch::IntegrationTest
  test "should get reference" do
    get kp_reference_url
    assert_response :success
  end
end
