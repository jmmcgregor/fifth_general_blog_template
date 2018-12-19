require "application_system_test_case"

class BlogPhotosTest < ApplicationSystemTestCase
  setup do
    @blog_photo = blog_photos(:one)
  end

  test "visiting the index" do
    visit blog_photos_url
    assert_selector "h1", text: "Blog Photos"
  end

  test "creating a Blog photo" do
    visit blog_photos_url
    click_on "New Blog Photo"

    fill_in "Image data", with: @blog_photo.image_data
    click_on "Create Blog photo"

    assert_text "Blog photo was successfully created"
    click_on "Back"
  end

  test "updating a Blog photo" do
    visit blog_photos_url
    click_on "Edit", match: :first

    fill_in "Image data", with: @blog_photo.image_data
    click_on "Update Blog photo"

    assert_text "Blog photo was successfully updated"
    click_on "Back"
  end

  test "destroying a Blog photo" do
    visit blog_photos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog photo was successfully destroyed"
  end
end
