require 'test_helper'

class BlogUsersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @blog_user = blog_users(:one)
  end

  test "should get index" do
    get blog_users_url
    assert_response :success
  end

  test "should get new" do
    get new_blog_user_url
    assert_response :success
  end

  test "should create blog_user" do
    assert_difference('BlogUser.count') do
      post blog_users_url, params: { blog_user: { email: @blog_user.email, name: @blog_user.name } }
    end

    assert_redirected_to blog_user_url(BlogUser.last)
  end

  test "should show blog_user" do
    get blog_user_url(@blog_user)
    assert_response :success
  end

  test "should get edit" do
    get edit_blog_user_url(@blog_user)
    assert_response :success
  end

  test "should update blog_user" do
    patch blog_user_url(@blog_user), params: { blog_user: { email: @blog_user.email, name: @blog_user.name } }
    assert_redirected_to blog_user_url(@blog_user)
  end

  test "should destroy blog_user" do
    assert_difference('BlogUser.count', -1) do
      delete blog_user_url(@blog_user)
    end

    assert_redirected_to blog_users_url
  end
end
