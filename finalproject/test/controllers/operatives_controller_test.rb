require 'test_helper'

class OperativesControllerTest < ActionController::TestCase
  setup do
    @operative = operatives(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:operatives)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create operative" do
    assert_difference('Operative.count') do
      post :create, operative: { deployment_time: @operative.deployment_time, job_id: @operative.job_id, name: @operative.name, skill: @operative.skill, status: @operative.status, user_id: @operative.user_id }
    end

    assert_redirected_to operative_path(assigns(:operative))
  end

  test "should show operative" do
    get :show, id: @operative
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @operative
    assert_response :success
  end

  test "should update operative" do
    patch :update, id: @operative, operative: { deployment_time: @operative.deployment_time, job_id: @operative.job_id, name: @operative.name, skill: @operative.skill, status: @operative.status, user_id: @operative.user_id }
    assert_redirected_to operative_path(assigns(:operative))
  end

  test "should destroy operative" do
    assert_difference('Operative.count', -1) do
      delete :destroy, id: @operative
    end

    assert_redirected_to operatives_path
  end
end
