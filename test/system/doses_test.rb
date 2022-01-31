require "application_system_test_case"

class DosesTest < ApplicationSystemTestCase
  setup do
    @dose = doses(:one)
  end

  test "visiting the index" do
    visit doses_url
    assert_selector "h1", text: "Doses"
  end

  test "should create dose" do
    visit doses_url
    click_on "New dose"

    fill_in "Description", with: @dose.description
    click_on "Create Dose"

    assert_text "Dose was successfully created"
    click_on "Back"
  end

  test "should update Dose" do
    visit dose_url(@dose)
    click_on "Edit this dose", match: :first

    fill_in "Description", with: @dose.description
    click_on "Update Dose"

    assert_text "Dose was successfully updated"
    click_on "Back"
  end

  test "should destroy Dose" do
    visit dose_url(@dose)
    click_on "Destroy this dose", match: :first

    assert_text "Dose was successfully destroyed"
  end
end
