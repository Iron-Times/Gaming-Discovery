class ReviewsController < ApplicationController
  # def index
  #   @
  # end

  def index
    @game = Review.new(name: params[:name])
    # render json: @game.body.each do |g|
    #   json.title @game.title
    #   json.rating @game.rating
    # end
    # .review.body
  end

  def show
    game2 = Review.new(name: params[:name], count: 5)
    render json: game2
  end
end
