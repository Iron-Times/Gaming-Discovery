class ReviewsController < ApplicationController
  def index
    @game = Review.new(name: params[:name], count: params[:count])
    render json: game
    # .review.body
  end

  def show
    game = Review.new(name: params[:name], count: 1)
    render json: game
  end
end
