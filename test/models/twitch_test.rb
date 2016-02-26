require 'test_helper'

class TwitchTest < ActiveSupport::TestCase

  def test "twitch class exits" do
    assert Twitch.new()
  end
end
