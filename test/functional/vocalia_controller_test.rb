require 'test_helper'

class VocaliaControllerTest < ActionController::TestCase
  setup do
    @vocalium = vocalia(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:vocalia)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create vocalium" do
    assert_difference('Vocalium.count') do
      post :create, :vocalium => @vocalium.attributes
    end

    assert_redirected_to vocalium_path(assigns(:vocalium))
  end

  test "should show vocalium" do
    get :show, :id => @vocalium
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => @vocalium
    assert_response :success
  end

  test "should update vocalium" do
    put :update, :id => @vocalium, :vocalium => @vocalium.attributes
    assert_redirected_to vocalium_path(assigns(:vocalium))
  end

  test "should destroy vocalium" do
    assert_difference('Vocalium.count', -1) do
      delete :destroy, :id => @vocalium
    end

    assert_redirected_to vocalia_path
  end
end
