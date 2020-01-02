require "application_system_test_case"

class DotsTest < ApplicationSystemTestCase
  setup do
    @dot = dots(:one)
  end

  test "visiting the index" do
    visit dots_url
    assert_selector "h1", text: "Dots"
  end

  test "creating a Dot" do
    visit dots_url
    click_on "New Dot"

    fill_in "Experiment", with: @dot.experiment_id
    fill_in "Metric", with: @dot.metric_id
    fill_in "Value", with: @dot.value
    click_on "Create Dot"

    assert_text "Dot was successfully created"
    click_on "Back"
  end

  test "updating a Dot" do
    visit dots_url
    click_on "Edit", match: :first

    fill_in "Experiment", with: @dot.experiment_id
    fill_in "Metric", with: @dot.metric_id
    fill_in "Value", with: @dot.value
    click_on "Update Dot"

    assert_text "Dot was successfully updated"
    click_on "Back"
  end

  test "destroying a Dot" do
    visit dots_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Dot was successfully destroyed"
  end
end
