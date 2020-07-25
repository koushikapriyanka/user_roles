require "application_system_test_case"

class UserMetaTest < ApplicationSystemTestCase
  setup do
    @user_metum = user_meta(:one)
  end

  test "visiting the index" do
    visit user_meta_url
    assert_selector "h1", text: "User Meta"
  end

  test "creating a User metum" do
    visit user_meta_url
    click_on "New User Metum"

    fill_in "Meta key", with: @user_metum.meta_key
    fill_in "Meta value", with: @user_metum.meta_value
    fill_in "User", with: @user_metum.user_id
    click_on "Create User metum"

    assert_text "User metum was successfully created"
    click_on "Back"
  end

  test "updating a User metum" do
    visit user_meta_url
    click_on "Edit", match: :first

    fill_in "Meta key", with: @user_metum.meta_key
    fill_in "Meta value", with: @user_metum.meta_value
    fill_in "User", with: @user_metum.user_id
    click_on "Update User metum"

    assert_text "User metum was successfully updated"
    click_on "Back"
  end

  test "destroying a User metum" do
    visit user_meta_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User metum was successfully destroyed"
  end
end
