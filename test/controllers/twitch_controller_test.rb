require 'test_helper'

class TwitchControllerTest < ActionController::TestCase
  test "should get streams" do
    get :streams
    assert_response :success
  end
end
