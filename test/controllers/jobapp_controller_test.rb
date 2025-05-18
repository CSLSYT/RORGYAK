require "test_helper"

class JobappControllerTest < ActionDispatch::IntegrationTest
  test "should get name:string" do
    get jobapp_name:string_url
    assert_response :success
  end

  test "should get email:string" do
    get jobapp_email:string_url
    assert_response :success
  end

  test "should get phone:string" do
    get jobapp_phone:string_url
    assert_response :success
  end

  test "should get position:string" do
    get jobapp_position:string_url
    assert_response :success
  end

  test "should get document:string" do
    get jobapp_document:string_url
    assert_response :success
  end

  test "should get message:text" do
    get jobapp_message:text_url
    assert_response :success
  end
end
