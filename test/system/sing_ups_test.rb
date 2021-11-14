require "application_system_test_case"

class SingUpsTest < ApplicationSystemTestCase
  setup do
    @sing_up = sing_ups(:one)
  end

  test "visiting the index" do
    visit sing_ups_url
    assert_selector "h1", text: "Sing Ups"
  end

  test "creating a Sing up" do
    visit sing_ups_url
    click_on "New Sing Up"

    click_on "Create Sing up"

    assert_text "Sing up was successfully created"
    click_on "Back"
  end

  test "updating a Sing up" do
    visit sing_ups_url
    click_on "Edit", match: :first

    click_on "Update Sing up"

    assert_text "Sing up was successfully updated"
    click_on "Back"
  end

  test "destroying a Sing up" do
    visit sing_ups_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sing up was successfully destroyed"
  end
end
