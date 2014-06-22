class RestaurantsController < ApplicationController

  def index
    @page = params[:page].to_i
    @restaurants  = Restaurant.order('updated_at DESC').limit(10).offset(10 * @page)
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      flash.now[:notice] = 'Something went wrong, you submission could not be saved.'
      render :new
    end
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :city, :state, :zip_code, :description, :category)
  end
end
