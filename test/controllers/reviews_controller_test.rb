require 'test_helper'

class ReviewsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get title from index" do
    # destiny = Review.new(name: "Destiny", count: 5)
    get :index, format: :json, name: "Destiny", count: "5"
    assert response.body.include?("Destiny")
    # assert_equal "Destiny", destiny.review["body"][0]["title"]
  end

  test "should get show" do
    get :show, name: "Destiny"
    assert_response :success
  end

end
