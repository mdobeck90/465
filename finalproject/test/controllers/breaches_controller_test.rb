require 'test_helper'

class BreachesControllerTest < ActionController::TestCase
  setup do
    @breach = breaches(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:breaches)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create breach" do
    assert_difference('Breach.count') do
      post :create, breach: { integer: @breach.integer, integer: @breach.integer, target_id: @breach.target_id, user_id: @breach.user_id }
    end

    assert_redirected_to breach_path(assigns(:breach))
  end

  test "should show breach" do
    get :show, id: @breach
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @breach
    assert_response :success
  end

  test "should update breach" do
    patch :update, id: @breach, breach: { integer: @breach.integer, integer: @breach.integer, target_id: @breach.target_id, user_id: @breach.user_id }
    assert_redirected_to breach_path(assigns(:breach))
  end

  test "should destroy breach" do
    assert_difference('Breach.count', -1) do
      delete :destroy, id: @breach
    end

    assert_redirected_to breaches_path
  end
end
