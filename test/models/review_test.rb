require 'test_helper'

# Money Patch
class Review
  attr_reader :review
  def initialize(name: nil , count: nil)
    destiny = File.read("./test/fixtures/destiny.json")
    @review = JSON.parse(destiny)
  end

  def body
    @review["body"]
  end
end
# Monkey Patch

class ReviewsTest < ActionController::TestCase
  test "Review class exists" do
    assert Review
  end

  test "can get game reviews" do
    destiny = Review.new(name: "Destiny", count: 5)
    assert_equal "Destiny", destiny.review["body"][0]["title"]
  end
end
