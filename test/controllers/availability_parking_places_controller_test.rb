require 'test_helper'

class AvailabilityParkingPlacesControllerTest < ActionController::TestCase
  setup do
    @availability_parking_place = availability_parking_places(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:availability_parking_places)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create availability_parking_place" do
    assert_difference('AvailabilityParkingPlace.count') do
      post :create, availability_parking_place: { daily_rate: @availability_parking_place.daily_rate, day_of_week_id: @availability_parking_place.day_of_week_id, finish_date: @availability_parking_place.finish_date, hourly_rate: @availability_parking_place.hourly_rate, monthly_rate: @availability_parking_place.monthly_rate, parking_place_id: @availability_parking_place.parking_place_id, spaces_number: @availability_parking_place.spaces_number, start_date: @availability_parking_place.start_date, weekly_rate: @availability_parking_place.weekly_rate }
    end

    assert_redirected_to availability_parking_place_path(assigns(:availability_parking_place))
  end

  test "should show availability_parking_place" do
    get :show, id: @availability_parking_place
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @availability_parking_place
    assert_response :success
  end

  test "should update availability_parking_place" do
    patch :update, id: @availability_parking_place, availability_parking_place: { daily_rate: @availability_parking_place.daily_rate, day_of_week_id: @availability_parking_place.day_of_week_id, finish_date: @availability_parking_place.finish_date, hourly_rate: @availability_parking_place.hourly_rate, monthly_rate: @availability_parking_place.monthly_rate, parking_place_id: @availability_parking_place.parking_place_id, spaces_number: @availability_parking_place.spaces_number, start_date: @availability_parking_place.start_date, weekly_rate: @availability_parking_place.weekly_rate }
    assert_redirected_to availability_parking_place_path(assigns(:availability_parking_place))
  end

  test "should destroy availability_parking_place" do
    assert_difference('AvailabilityParkingPlace.count', -1) do
      delete :destroy, id: @availability_parking_place
    end

    assert_redirected_to availability_parking_places_path
  end
end
