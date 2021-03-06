require "application_system_test_case"

class ObservationsTest < ApplicationSystemTestCase
  setup do
    @observation = observations(:one)
  end

  test "visiting the index" do
    visit observations_url
    assert_selector "h1", text: "Observations"
  end

  test "creating a Observation" do
    visit observations_url
    click_on "New Observation"

    fill_in "Max number", with: @observation.max_number
    fill_in "Name", with: @observation.name
    fill_in "Notes", with: @observation.notes
    fill_in "Season", with: @observation.season
    click_on "Create Observation"

    assert_text "Observation was successfully created"
    click_on "Back"
  end

  test "updating a Observation" do
    visit observations_url
    click_on "Edit", match: :first

    fill_in "Max number", with: @observation.max_number
    fill_in "Name", with: @observation.name
    fill_in "Notes", with: @observation.notes
    fill_in "Season", with: @observation.season
    click_on "Update Observation"

    assert_text "Observation was successfully updated"
    click_on "Back"
  end

  test "destroying a Observation" do
    visit observations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Observation was successfully destroyed"
  end
end
