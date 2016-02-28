require 'kappa'

class InquiryController < ApplicationController
  def index
    @game = Review.new(name: params[:name])
    @streams = Twitch.streams.find(game: params[:game])
      @streamers = {}
      array = []
      @streams.each do |s|
        next if s.viewer_count < 5
          array << s
          array.sort_by {|s| s.viewer_count}
          array
        end
        array.each_with_index do |s, i|
          break if i == 10
          @streamers[s.viewer_count] = s.url
          @streamers
        end
  end
end
