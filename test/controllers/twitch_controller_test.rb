require 'test_helper'

class TwitchControllerTest < ActionController::TestCase
  test "should get channel" do
    get :channel
    assert_response :success
  end

  test "should get channels" do
    get :channels
    assert_response :success
  end

  test "should get game" do
    get :game
    assert_response :success
  end

  test "should get gamesuggestion" do
    get :gamesuggestion
    assert_response :success
  end

  test "should get games" do
    get :games
    assert_response :success
  end

  test "should get images" do
    get :images
    assert_response :success
  end

  test "should get stream" do
    get :stream
    assert_response :success
  end

  test "should get streamsummary" do
    get :streamsummary
    assert_response :success
  end

  test "should get streams" do
    get :streams
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

  test "should get teams" do
    get :teams
    assert_response :success
  end

  test "should get user" do
    get :user
    assert_response :success
  end

  test "should get users" do
    get :users
    assert_response :success
  end

  test "should get video" do
    get :video
    assert_response :success
  end

  test "should get videos" do
    get :videos
    assert_response :success
  end

end
