class RestaurantsController < ApplicationController

  def index
    @restaurants  = Restaurant.order('updated_at ASC')
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

end
