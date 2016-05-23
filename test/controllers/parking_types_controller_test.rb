require 'test_helper'

class ParkingTypesControllerTest < ActionController::TestCase
  setup do
    @parking_type = parking_types(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parking_types)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking_type" do
    assert_difference('ParkingType.count') do
      post :create, parking_type: { description: @parking_type.description, name: @parking_type.name }
    end

    assert_redirected_to parking_type_path(assigns(:parking_type))
  end

  test "should show parking_type" do
    get :show, id: @parking_type
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking_type
    assert_response :success
  end

  test "should update parking_type" do
    patch :update, id: @parking_type, parking_type: { description: @parking_type.description, name: @parking_type.name }
    assert_redirected_to parking_type_path(assigns(:parking_type))
  end

  test "should destroy parking_type" do
    assert_difference('ParkingType.count', -1) do
      delete :destroy, id: @parking_type
    end

    assert_redirected_to parking_types_path
  end
end
