require 'kappa'
class TwitchController < ApplicationController
  def streams
    streamers = {}
    v = Twitch.streams.find(:game => params["game"])
    v.each do |stream|
      next if stream.viewer_count < 1000
       streamers[stream.user] = stream.url
    end
    render json: streamers
  end
end
