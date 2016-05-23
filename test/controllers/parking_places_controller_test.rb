require 'test_helper'

class ParkingPlacesControllerTest < ActionController::TestCase
  setup do
    @parking_place = parking_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:parking_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create parking_place" do
    assert_difference('ParkingPlace.count') do
      post :create, parking_place: { address: @parking_place.address, daily_rate: @parking_place.daily_rate, description: @parking_place.description, georeference_x: @parking_place.georeference_x, georeference_y: @parking_place.georeference_y, hourly_rate: @parking_place.hourly_rate, monthly_rate: @parking_place.monthly_rate, organization_id: @parking_place.organization_id, owner_type_id: @parking_place.owner_type_id, parking_type_id: @parking_place.parking_type_id, spaces_number: @parking_place.spaces_number, user_id: @parking_place.user_id, weekly_rate: @parking_place.weekly_rate }
    end

    assert_redirected_to parking_place_path(assigns(:parking_place))
  end

  test "should show parking_place" do
    get :show, id: @parking_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @parking_place
    assert_response :success
  end

  test "should update parking_place" do
    patch :update, id: @parking_place, parking_place: { address: @parking_place.address, daily_rate: @parking_place.daily_rate, description: @parking_place.description, georeference_x: @parking_place.georeference_x, georeference_y: @parking_place.georeference_y, hourly_rate: @parking_place.hourly_rate, monthly_rate: @parking_place.monthly_rate, organization_id: @parking_place.organization_id, owner_type_id: @parking_place.owner_type_id, parking_type_id: @parking_place.parking_type_id, spaces_number: @parking_place.spaces_number, user_id: @parking_place.user_id, weekly_rate: @parking_place.weekly_rate }
    assert_redirected_to parking_place_path(assigns(:parking_place))
  end

  test "should destroy parking_place" do
    assert_difference('ParkingPlace.count', -1) do
      delete :destroy, id: @parking_place
    end

    assert_redirected_to parking_places_path
  end
end
