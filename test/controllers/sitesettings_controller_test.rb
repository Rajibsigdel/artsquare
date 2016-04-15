require 'test_helper'

class SitesettingsControllerTest < ActionController::TestCase
  setup do
    @sitesetting = sitesettings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:sitesettings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create sitesetting" do
    assert_difference('Sitesetting.count') do
      post :create, sitesetting: { meta_key: @sitesetting.meta_key, meta_value: @sitesetting.meta_value }
    end

    assert_redirected_to sitesetting_path(assigns(:sitesetting))
  end

  test "should show sitesetting" do
    get :show, id: @sitesetting
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @sitesetting
    assert_response :success
  end

  test "should update sitesetting" do
    patch :update, id: @sitesetting, sitesetting: { meta_key: @sitesetting.meta_key, meta_value: @sitesetting.meta_value }
    assert_redirected_to sitesetting_path(assigns(:sitesetting))
  end

  test "should destroy sitesetting" do
    assert_difference('Sitesetting.count', -1) do
      delete :destroy, id: @sitesetting
    end

    assert_redirected_to sitesettings_path
  end
end
