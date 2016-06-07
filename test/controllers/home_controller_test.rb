require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get search_parking" do
    get :search_parking
    assert_response :success
  end

end
