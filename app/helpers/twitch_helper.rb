module TwitchHelper
  def configure(&block) ⇒ nil
    Twitch.configure do |config|
      config.client_id = 'sc2daily-v1.0.0'
      config.api = Twitch::V2
    end
  end

  #streams = Twitch.streams.featured(:limit => 10)

  def instance(&block) ⇒ Object
    client_a = Twitch.instance do |config|
      config.client_id = 'App-A-v2.0.0'
    end
    client_b = Twitch.instance do |config|
      config.client_id = 'App-B-v3.0.0'
    end
  end
  #streams = client_a.streams.featured(:limit => 10)
  #channel = client_b.channels.get('destiny')
end
