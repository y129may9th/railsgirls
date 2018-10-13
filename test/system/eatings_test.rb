require "application_system_test_case"

class EatingsTest < ApplicationSystemTestCase
  setup do
    @eating = eatings(:one)
  end

  test "visiting the index" do
    visit eatings_url
    assert_selector "h1", text: "Eatings"
  end

  test "creating a Eating" do
    visit eatings_url
    click_on "New Eating"

    fill_in "Description", with: @eating.description
    fill_in "Name", with: @eating.name
    fill_in "Picture", with: @eating.picture
    click_on "Create Eating"

    assert_text "Eating was successfully created"
    click_on "Back"
  end

  test "updating a Eating" do
    visit eatings_url
    click_on "Edit", match: :first

    fill_in "Description", with: @eating.description
    fill_in "Name", with: @eating.name
    fill_in "Picture", with: @eating.picture
    click_on "Update Eating"

    assert_text "Eating was successfully updated"
    click_on "Back"
  end

  test "destroying a Eating" do
    visit eatings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Eating was successfully destroyed"
  end
end
