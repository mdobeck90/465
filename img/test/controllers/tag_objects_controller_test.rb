require 'test_helper'

class TagObjectsControllerTest < ActionController::TestCase
  setup do
    @tag_object = tag_objects(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tag_objects)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tag_object" do
    assert_difference('TagObject.count') do
      post :create, tag_object: { image_id: @tag_object.image_id, str: @tag_object.str }
    end

    assert_redirected_to tag_object_path(assigns(:tag_object))
  end

  test "should show tag_object" do
    get :show, id: @tag_object
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tag_object
    assert_response :success
  end

  test "should update tag_object" do
    patch :update, id: @tag_object, tag_object: { image_id: @tag_object.image_id, str: @tag_object.str }
    assert_redirected_to tag_object_path(assigns(:tag_object))
  end

  test "should destroy tag_object" do
    assert_difference('TagObject.count', -1) do
      delete :destroy, id: @tag_object
    end

    assert_redirected_to tag_objects_path
  end
end
