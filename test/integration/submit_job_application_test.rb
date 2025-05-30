require "test_helper"

class SubmitJobApplicationTest < ActionDispatch::IntegrationTest
  test "can submit job application form" do
    get new_job_application_path
    assert_response :success

    post job_applications_path, params: {
      job_application: {
        name: "Integráció Béla",
        email: "bela@example.com",
        phone: "000",
        position: "Tesztelő",
        message: "Teszt üzenet"
      }
    }

    follow_redirect!
    assert_response :success
    assert_select "body", /Sikeres jelentkezés|Köszönjük/i
  end
end
