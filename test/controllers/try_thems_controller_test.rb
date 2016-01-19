require 'test_helper'

class TryThemsControllerTest < ActionController::TestCase
  setup do
    @try_them = try_thems(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:try_thems)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create try_them" do
    assert_difference('TryThem.count') do
      post :create, try_them: { description: @try_them.description, title: @try_them.title }
    end

    assert_redirected_to try_them_path(assigns(:try_them))
  end

  test "should show try_them" do
    get :show, id: @try_them
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @try_them
    assert_response :success
  end

  test "should update try_them" do
    patch :update, id: @try_them, try_them: { description: @try_them.description, title: @try_them.title }
    assert_redirected_to try_them_path(assigns(:try_them))
  end

  test "should destroy try_them" do
    assert_difference('TryThem.count', -1) do
      delete :destroy, id: @try_them
    end

    assert_redirected_to try_thems_path
  end
end
