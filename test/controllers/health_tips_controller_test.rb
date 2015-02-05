require 'test_helper'

class HealthTipsControllerTest < ActionController::TestCase
  setup do
    @health_tip = health_tips(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:health_tips)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create health_tip" do
    assert_difference('HealthTip.count') do
      post :create, health_tip: { category: @health_tip.category, tip: @health_tip.tip }
    end

    assert_redirected_to health_tip_path(assigns(:health_tip))
  end

  test "should show health_tip" do
    get :show, id: @health_tip
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @health_tip
    assert_response :success
  end

  test "should update health_tip" do
    patch :update, id: @health_tip, health_tip: { category: @health_tip.category, tip: @health_tip.tip }
    assert_redirected_to health_tip_path(assigns(:health_tip))
  end

  test "should destroy health_tip" do
    assert_difference('HealthTip.count', -1) do
      delete :destroy, id: @health_tip
    end

    assert_redirected_to health_tips_path
  end
end
