require 'test_helper'

class UserMetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user_metum = user_meta(:one)
  end

  test "should get index" do
    get user_meta_url
    assert_response :success
  end

  test "should get new" do
    get new_user_metum_url
    assert_response :success
  end

  test "should create user_metum" do
    assert_difference('UserMetum.count') do
      post user_meta_url, params: { user_metum: { meta_key: @user_metum.meta_key, meta_value: @user_metum.meta_value, user_id: @user_metum.user_id } }
    end

    assert_redirected_to user_metum_url(UserMetum.last)
  end

  test "should show user_metum" do
    get user_metum_url(@user_metum)
    assert_response :success
  end

  test "should get edit" do
    get edit_user_metum_url(@user_metum)
    assert_response :success
  end

  test "should update user_metum" do
    patch user_metum_url(@user_metum), params: { user_metum: { meta_key: @user_metum.meta_key, meta_value: @user_metum.meta_value, user_id: @user_metum.user_id } }
    assert_redirected_to user_metum_url(@user_metum)
  end

  test "should destroy user_metum" do
    assert_difference('UserMetum.count', -1) do
      delete user_metum_url(@user_metum)
    end

    assert_redirected_to user_meta_url
  end
end
