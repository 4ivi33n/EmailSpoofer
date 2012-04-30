require 'test_helper'

class SpoofersControllerTest < ActionController::TestCase
  setup do
    @spoofer = spoofers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:spoofers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create spoofer" do
    assert_difference('Spoofer.count') do
      post :create, spoofer: @spoofer.attributes
    end

    assert_redirected_to spoofer_path(assigns(:spoofer))
  end

  test "should show spoofer" do
    get :show, id: @spoofer.to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @spoofer.to_param
    assert_response :success
  end

  test "should update spoofer" do
    put :update, id: @spoofer.to_param, spoofer: @spoofer.attributes
    assert_redirected_to spoofer_path(assigns(:spoofer))
  end

  test "should destroy spoofer" do
    assert_difference('Spoofer.count', -1) do
      delete :destroy, id: @spoofer.to_param
    end

    assert_redirected_to spoofers_path
  end
end
