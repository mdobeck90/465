require 'test_helper'

class ImageObjectsControllerTest < ActionController::TestCase
  setup do
    @image_object = image_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:image_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create image_object" do
    assert_difference('ImageObject.count') do
      post :create, image_object: { filename: @image_object.filename, private: @image_object.private, user_id: @image_object.user_id }
    end

    assert_redirected_to image_object_path(assigns(:image_object))
  end

  test "should show image_object" do
    get :show, id: @image_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @image_object
    assert_response :success
  end

  test "should update image_object" do
    patch :update, id: @image_object, image_object: { filename: @image_object.filename, private: @image_object.private, user_id: @image_object.user_id }
    assert_redirected_to image_object_path(assigns(:image_object))
  end

  test "should destroy image_object" do
    assert_difference('ImageObject.count', -1) do
      delete :destroy, id: @image_object
    end

    assert_redirected_to image_objects_path
  end
end
