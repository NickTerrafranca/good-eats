class RestaurantsController < ApplicationController

  def index
    @restaurants  = Restaurant.order('updated_at ASC')
  end



end
