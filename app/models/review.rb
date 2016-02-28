
class Review
  attr_reader :review, :name, :count, :body
  def initialize(name: nil)
    @name = name
    # @count = count
    @review = Unirest.get "https://videogamesrating.p.mashape.com/get.php?count=15&game=#{@name}",
                headers:{ "X-Mashape-Key" => "#{ENV["IGN_KEY"]}",
                          "Accept" => "application/json"}

    @body = @review.body
    # @title = @review.body.each["title"]
    # @rating = @review.body[0]["score"]
    # @publisher = @review.body[0]["publisher"]
    # @platform = @review.body[0]["platforms"]
  end

  # def title
  #   @review.body.each do |t|
  #     t["title"]
  #   end
  # end
  #
  # def rating
  #   @review.body.each do |r|
  #     r["score"]
  #   end
  # end
  #
  # def publisher
  #   @review.body.each do |pub|
  #     pub["publisher"]
  #   end
  # end
  #
  # def platform
  #   @review.body.each do |plat|
  #     plat["platforms"]
  #   end
  # end

  # def body
  #   @review["response"]
  # end

end
