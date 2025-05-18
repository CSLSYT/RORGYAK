require "test_helper"

class JobApplicationControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get job_application_create_url
    assert_response :success
  end

  test "should get index" do
    get job_application_index_url
    assert_response :success
  end

  test "should get show" do
    get job_application_show_url
    assert_response :success
  end
end
