require "test_helper"

class KpControllerTest < ActionDispatch::IntegrationTest
  test "should get reference" do
    get reference_url
    assert_response :success
    assert_match "Referencia", @response.body
  end
end
