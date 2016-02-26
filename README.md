== README

# These code snippets use an open-source library. http://unirest.io/ruby
response = Unirest.get "https://videogamesrating.p.mashape.com/get.php?count=5&game=Destiny",
  headers:{
    "X-Mashape-Key" => IGN_KEY,
    "Accept" => "application/json"
  }
