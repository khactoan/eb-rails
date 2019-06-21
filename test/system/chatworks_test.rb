require "application_system_test_case"

class ChatworksTest < ApplicationSystemTestCase
  setup do
    @chatwork = chatworks(:one)
  end

  test "visiting the index" do
    visit chatworks_url
    assert_selector "h1", text: "Chatworks"
  end

  test "creating a Chatwork" do
    visit chatworks_url
    click_on "New Chatwork"

    fill_in "Api token", with: @chatwork.api_token
    fill_in "User", with: @chatwork.user_id
    click_on "Create Chatwork"

    assert_text "Chatwork was successfully created"
    click_on "Back"
  end

  test "updating a Chatwork" do
    visit chatworks_url
    click_on "Edit", match: :first

    fill_in "Api token", with: @chatwork.api_token
    fill_in "User", with: @chatwork.user_id
    click_on "Update Chatwork"

    assert_text "Chatwork was successfully updated"
    click_on "Back"
  end

  test "destroying a Chatwork" do
    visit chatworks_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Chatwork was successfully destroyed"
  end
end
