require 'test_helper'

class ImageUserObjectsControllerTest < ActionController::TestCase
  setup do
    @image_user_object = image_user_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_user_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_user_object" do
    assert_difference('ImageUserObject.count') do
      post :create, image_user_object: { image_id: @image_user_object.image_id, user_id: @image_user_object.user_id }
    end

    assert_redirected_to image_user_object_path(assigns(:image_user_object))
  end

  test "should show image_user_object" do
    get :show, id: @image_user_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_user_object
    assert_response :success
  end

  test "should update image_user_object" do
    patch :update, id: @image_user_object, image_user_object: { image_id: @image_user_object.image_id, user_id: @image_user_object.user_id }
    assert_redirected_to image_user_object_path(assigns(:image_user_object))
  end

  test "should destroy image_user_object" do
    assert_difference('ImageUserObject.count', -1) do
      delete :destroy, id: @image_user_object
    end

    assert_redirected_to image_user_objects_path
  end
end
