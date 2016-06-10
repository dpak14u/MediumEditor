require 'test_helper'

class UserCommentPhotosControllerTest < ActionController::TestCase
  setup do
    @user_comment_photo = user_comment_photos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:user_comment_photos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create user_comment_photo" do
    assert_difference('UserCommentPhoto.count') do
      post :create, user_comment_photo: { body: @user_comment_photo.body, photo: @user_comment_photo.photo, user_id: @user_comment_photo.user_id }
    end

    assert_redirected_to user_comment_photo_path(assigns(:user_comment_photo))
  end

  test "should show user_comment_photo" do
    get :show, id: @user_comment_photo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @user_comment_photo
    assert_response :success
  end

  test "should update user_comment_photo" do
    patch :update, id: @user_comment_photo, user_comment_photo: { body: @user_comment_photo.body, photo: @user_comment_photo.photo, user_id: @user_comment_photo.user_id }
    assert_redirected_to user_comment_photo_path(assigns(:user_comment_photo))
  end

  test "should destroy user_comment_photo" do
    assert_difference('UserCommentPhoto.count', -1) do
      delete :destroy, id: @user_comment_photo
    end

    assert_redirected_to user_comment_photos_path
  end
end
