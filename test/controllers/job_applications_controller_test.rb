require "test_helper"

class JobApplicationsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get new_job_application_url
    assert_response :success
    assert_select "form"
  end

  test "should create job application" do
    assert_difference("JobApplication.count") do
      post job_applications_url, params: {
        job_application: {
          name: "Teszt Béla",
          email: "bela@example.com",
          phone: "321",
          position: "Tesztelő",
          message: "Üzenet"
        }
      }
    end

    assert_redirected_to thanks_url
  end
end
