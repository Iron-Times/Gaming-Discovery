require 'httparty'

class Twitch
  attr_reader :results
  def initialize
      @results = HTTParty.get("https://api.twitch.tv/kraken/")
  end
end
