require 'httparty'
require 'json'
require 'kappa'

class Twitch
  include TwitchHelper
  def initialize(game: nil, user: nil)
    @game = game
    @user = user
    if @game = nil
      @results = HTTParty.get("https://api.twitch.tv/#{ENV["TWITCH_KEY"]}/#{@user}/base/"
    else
      @results = HTTParty.get("https://api.twitch.tv/#{ENV["TWITCH_KEY"]}/#{@game}/base/"
    end
  end


end
