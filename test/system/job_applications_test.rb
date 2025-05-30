require "application_system_test_case"

class JobApplicationsTest < ApplicationSystemTestCase
  test "visiting the new job application form and submitting" do
    visit new_job_application_path

    fill_in "Név", with: "Rendszer Elek"
    fill_in "Email", with: "rendszer@example.com"
    fill_in "Telefon", with: "123456"
    fill_in "Választott pozíció", with: "Fejlesztő"
    fill_in "Személyes üzenet", with: "Motiváció"

    click_on "Jelentkezés"

    assert_text "Sikeres jelentkezés"
  end
end
