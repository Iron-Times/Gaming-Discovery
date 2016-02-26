
class Review
  attr_reader :review
  def initialize(name: nil, count: nil)
    @name = name
    @count = count
    @review = Unirest.get "https://videogamesrating.p.mashape.com/get.php?count=#{@count}&game=#{@name}",
                headers:{ "X-Mashape-Key" => "#{ENV["IGN_KEY"]}",
                          "Accept" => "application/json"}
  end

  # def body
  #   @review["response"]
  # end

end
