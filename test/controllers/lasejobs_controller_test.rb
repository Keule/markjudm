require 'test_helper'

class LasejobsControllerTest < ActionController::TestCase
  setup do
    @lasejob = lasejobs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lasejobs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lasejob" do
    assert_difference('Lasejob.count') do
      post :create, lasejob: { title: @lasejob.title }
    end

    assert_redirected_to lasejob_path(assigns(:lasejob))
  end

  test "should show lasejob" do
    get :show, id: @lasejob
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lasejob
    assert_response :success
  end

  test "should update lasejob" do
    patch :update, id: @lasejob, lasejob: { title: @lasejob.title }
    assert_redirected_to lasejob_path(assigns(:lasejob))
  end

  test "should destroy lasejob" do
    assert_difference('Lasejob.count', -1) do
      delete :destroy, id: @lasejob
    end

    assert_redirected_to lasejobs_path
  end
end
