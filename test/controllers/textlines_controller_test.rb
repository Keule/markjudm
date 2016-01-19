require 'test_helper'

class TextlinesControllerTest < ActionController::TestCase
  setup do
    @textline = textlines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:textlines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create textline" do
    assert_difference('Textline.count') do
      post :create, textline: { element_id: @textline.element_id, string: @textline.string }
    end

    assert_redirected_to textline_path(assigns(:textline))
  end

  test "should show textline" do
    get :show, id: @textline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @textline
    assert_response :success
  end

  test "should update textline" do
    patch :update, id: @textline, textline: { element_id: @textline.element_id, string: @textline.string }
    assert_redirected_to textline_path(assigns(:textline))
  end

  test "should destroy textline" do
    assert_difference('Textline.count', -1) do
      delete :destroy, id: @textline
    end

    assert_redirected_to textlines_path
  end
end
