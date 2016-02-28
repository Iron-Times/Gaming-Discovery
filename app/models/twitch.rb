require 'httparty'

class Twitch
  attr_reader :results, :user, :id, :broadcaster, :game_name, :viewer_count, :preview_url, :channel, :url, :game
  def initialize(user: = nil, id: = nil, broadcaster: = nil, game_name: = nil, viewer_count: = nil, preview_url: = nil, channel: = nil, url: = nil, game: = nil)
      @results = HTTParty.get("https://api.twitch.tv/kraken/")
      @id = id
      @user = user
      @broadcaster = broadcaster
      @game_name = game_name
      @viewer_count = viewer_count
      @preview_url = preview_url
      @channel = channel
      @url = url
      @game = game
  end
end
