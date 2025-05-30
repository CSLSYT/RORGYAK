require "test_helper"

class SubmitJobApplicationTest < ActionDispatch::IntegrationTest
  test "can submit job application form" do
    get new_job_application_url
    assert_response :success

    post job_applications_url, params: {
      job_application: {
        name: "Béla",
        email: "bela@example.com",
        phone: "123456",
        position: "Tesztelő",
        message: "Ez egy teszt"
      }
    }

    follow_redirect!
    assert_response :success
    assert_match "Köszönjük", @response.body
  end
end
