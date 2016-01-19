require 'test_helper'

class ControlcommandsControllerTest < ActionController::TestCase
  setup do
    @controlcommand = controlcommands(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:controlcommands)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create controlcommand" do
    assert_difference('Controlcommand.count') do
      post :create, controlcommand: { element_id: @controlcommand.element_id, path: @controlcommand.path }
    end

    assert_redirected_to controlcommand_path(assigns(:controlcommand))
  end

  test "should show controlcommand" do
    get :show, id: @controlcommand
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @controlcommand
    assert_response :success
  end

  test "should update controlcommand" do
    patch :update, id: @controlcommand, controlcommand: { element_id: @controlcommand.element_id, path: @controlcommand.path }
    assert_redirected_to controlcommand_path(assigns(:controlcommand))
  end

  test "should destroy controlcommand" do
    assert_difference('Controlcommand.count', -1) do
      delete :destroy, id: @controlcommand
    end

    assert_redirected_to controlcommands_path
  end
end
