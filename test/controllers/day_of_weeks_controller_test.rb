require 'test_helper'

class DayOfWeeksControllerTest < ActionController::TestCase
  setup do
    @day_of_week = day_of_weeks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:day_of_weeks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day_of_week" do
    assert_difference('DayOfWeek.count') do
      post :create, day_of_week: { mnemonic: @day_of_week.mnemonic, name: @day_of_week.name }
    end

    assert_redirected_to day_of_week_path(assigns(:day_of_week))
  end

  test "should show day_of_week" do
    get :show, id: @day_of_week
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day_of_week
    assert_response :success
  end

  test "should update day_of_week" do
    patch :update, id: @day_of_week, day_of_week: { mnemonic: @day_of_week.mnemonic, name: @day_of_week.name }
    assert_redirected_to day_of_week_path(assigns(:day_of_week))
  end

  test "should destroy day_of_week" do
    assert_difference('DayOfWeek.count', -1) do
      delete :destroy, id: @day_of_week
    end

    assert_redirected_to day_of_weeks_path
  end
end
