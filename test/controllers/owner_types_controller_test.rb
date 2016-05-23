require 'test_helper'

class OwnerTypesControllerTest < ActionController::TestCase
  setup do
    @owner_type = owner_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:owner_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create owner_type" do
    assert_difference('OwnerType.count') do
      post :create, owner_type: { description: @owner_type.description, name: @owner_type.name }
    end

    assert_redirected_to owner_type_path(assigns(:owner_type))
  end

  test "should show owner_type" do
    get :show, id: @owner_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @owner_type
    assert_response :success
  end

  test "should update owner_type" do
    patch :update, id: @owner_type, owner_type: { description: @owner_type.description, name: @owner_type.name }
    assert_redirected_to owner_type_path(assigns(:owner_type))
  end

  test "should destroy owner_type" do
    assert_difference('OwnerType.count', -1) do
      delete :destroy, id: @owner_type
    end

    assert_redirected_to owner_types_path
  end
end
