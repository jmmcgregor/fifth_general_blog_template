require "application_system_test_case"

class BlogUsersTest < ApplicationSystemTestCase
  setup do
    @blog_user = blog_users(:one)
  end

  test "visiting the index" do
    visit blog_users_url
    assert_selector "h1", text: "Blog Users"
  end

  test "creating a Blog user" do
    visit blog_users_url
    click_on "New Blog User"

    fill_in "Email", with: @blog_user.email
    fill_in "Name", with: @blog_user.name
    click_on "Create Blog user"

    assert_text "Blog user was successfully created"
    click_on "Back"
  end

  test "updating a Blog user" do
    visit blog_users_url
    click_on "Edit", match: :first

    fill_in "Email", with: @blog_user.email
    fill_in "Name", with: @blog_user.name
    click_on "Update Blog user"

    assert_text "Blog user was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog user" do
    visit blog_users_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog user was successfully destroyed"
  end
end
