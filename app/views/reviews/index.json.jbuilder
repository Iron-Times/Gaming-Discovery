  json.games do
    json.array! @game.body.each do |o|
      json.title o["title"]
      json.rating o["score"]
      json.publisher o["publisher"]
      json.platform o["platforms"]
    end
  end
