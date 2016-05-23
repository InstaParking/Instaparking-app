require 'test_helper'

class BookingsControllerTest < ActionController::TestCase
  setup do
    @booking = bookings(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:bookings)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create booking" do
    assert_difference('Booking.count') do
      post :create, booking: { amount_payable: @booking.amount_payable, booking_date: @booking.booking_date, booking_status_id: @booking.booking_status_id, finish_date: @booking.finish_date, parking_place_id: @booking.parking_place_id, payment_type_id: @booking.payment_type_id, start_date: @booking.start_date, user_id: @booking.user_id, vehicle_plate: @booking.vehicle_plate }
    end

    assert_redirected_to booking_path(assigns(:booking))
  end

  test "should show booking" do
    get :show, id: @booking
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @booking
    assert_response :success
  end

  test "should update booking" do
    patch :update, id: @booking, booking: { amount_payable: @booking.amount_payable, booking_date: @booking.booking_date, booking_status_id: @booking.booking_status_id, finish_date: @booking.finish_date, parking_place_id: @booking.parking_place_id, payment_type_id: @booking.payment_type_id, start_date: @booking.start_date, user_id: @booking.user_id, vehicle_plate: @booking.vehicle_plate }
    assert_redirected_to booking_path(assigns(:booking))
  end

  test "should destroy booking" do
    assert_difference('Booking.count', -1) do
      delete :destroy, id: @booking
    end

    assert_redirected_to bookings_path
  end
end
