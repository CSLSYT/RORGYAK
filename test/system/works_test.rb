require "application_system_test_case"

class WorksTest < ApplicationSystemTestCase
  setup do
    @work = works(:one)
  end

  test "visiting the index" do
    visit works_url
    assert_selector "h1", text: "Works"
  end

  test "should create work" do
    visit works_url
    click_on "New work"

    fill_in "Architect", with: @work.architect
    fill_in "Client", with: @work.client
    fill_in "Desctiption", with: @work.desctiption
    fill_in "Location", with: @work.location
    fill_in "Name", with: @work.name
    fill_in "Value", with: @work.value
    fill_in "Year", with: @work.year
    click_on "Create Work"

    assert_text "Work was successfully created"
    click_on "Back"
  end

  test "should update Work" do
    visit work_url(@work)
    click_on "Edit this work", match: :first

    fill_in "Architect", with: @work.architect
    fill_in "Client", with: @work.client
    fill_in "Desctiption", with: @work.desctiption
    fill_in "Location", with: @work.location
    fill_in "Name", with: @work.name
    fill_in "Value", with: @work.value
    fill_in "Year", with: @work.year
    click_on "Update Work"

    assert_text "Work was successfully updated"
    click_on "Back"
  end

  test "should destroy Work" do
    visit work_url(@work)
    click_on "Destroy this work", match: :first

    assert_text "Work was successfully destroyed"
  end
end
