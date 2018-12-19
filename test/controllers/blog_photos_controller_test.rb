require 'test_helper'

class BlogPhotosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_photo = blog_photos(:one)
  end

  test "should get index" do
    get blog_photos_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_photo_url
    assert_response :success
  end

  test "should create blog_photo" do
    assert_difference('BlogPhoto.count') do
      post blog_photos_url, params: { blog_photo: { image_data: @blog_photo.image_data } }
    end

    assert_redirected_to blog_photo_url(BlogPhoto.last)
  end

  test "should show blog_photo" do
    get blog_photo_url(@blog_photo)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_photo_url(@blog_photo)
    assert_response :success
  end

  test "should update blog_photo" do
    patch blog_photo_url(@blog_photo), params: { blog_photo: { image_data: @blog_photo.image_data } }
    assert_redirected_to blog_photo_url(@blog_photo)
  end

  test "should destroy blog_photo" do
    assert_difference('BlogPhoto.count', -1) do
      delete blog_photo_url(@blog_photo)
    end

    assert_redirected_to blog_photos_url
  end
end
