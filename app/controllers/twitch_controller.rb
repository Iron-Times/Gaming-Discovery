require 'kappa'
class TwitchController < ApplicationController
  def streams
    streamers = {}
    array = []
    v = Twitch.streams.find(:game => params["game"])
    v.each do |stream|
      next if stream.viewer_count < 5
        array << stream
        array.sort_by {|stream| stream.viewer_count}
        array
      end
        array.each_with_index do |stream, i|
          break if i == 10
          streamers[stream.user] = stream.url
        end
    render json: streamers
  end
end
