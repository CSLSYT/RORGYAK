require "test_helper"

class JobApplicationTest < ActiveSupport::TestCase
  test "should not save without name" do
    job = JobApplication.new(email: "teszt@example.com", phone: "123456789", position: "Fejlesztő")
    assert_not job.save, "Elmentette név nélkül is!"
  end

  test "should save valid job application" do
    job = JobApplication.new(name: "Valaki", email: "valaki@example.com", phone: "555555", position: "Fejlesztő")
    assert job.save
  end
end
