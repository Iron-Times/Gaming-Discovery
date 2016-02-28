require 'kappa'
class TwitchController < ApplicationController
  def streams
      v = Twitch.streams.find(:game => params["game"])
      streamers = {}
      array = []
      v.each do |stream|
        next if stream.viewer_count < 5
          array << stream
          array.sort_by {|stream| stream.viewer_count}
          array
        end
          array.each_with_index do |stream, i|
            break if i == 10
            streamers[stream.viewer_count] = stream.url
            streamers
          end
      render json: streamers
    end
  end
