require "test_helper"

class JobApplication < ApplicationRecord
  validates :name, presence: true
end

# This file is part of the JobApplication model tests.
class JobApplicationTest < ActiveSupport::TestCase
  test "should not save job application without name" do
    job = JobApplication.new(email: "x@example.com", phone: "123", position: "Fejlesztő")
    assert_not job.save, "Mentés történt név nélkül"
  end

  test "should save valid job application" do
    job = JobApplication.new(name: "Teszt", email: "teszt@example.com", phone: "123", position: "Fejlesztő")
    assert job.save
  end
end
