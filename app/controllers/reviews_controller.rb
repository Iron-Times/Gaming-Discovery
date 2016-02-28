class ReviewsController < ApplicationController
  # def index
  #   @
  # end

  def index
    @game = Review.new(name: params[:name], count: 20)
    # render json: game
    # .review.body
  end

  def show
    game2 = Review.new(name: params[:name], count: 5)
    render json: game2
  end
end
