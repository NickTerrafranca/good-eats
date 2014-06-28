class ReviewsController < ApplicationController

  def new
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @review = Review.new(review_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @review.save
      redirect_to @restaurant
    else
      flash.now[:notice] = 'Something went wrong, you submission could not be saved.'
      render :new
    end
  end

  def review_params
    params.require(:review).permit(:rating, :body)
  end
end
