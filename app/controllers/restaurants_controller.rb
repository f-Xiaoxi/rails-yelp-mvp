class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def create
    Restaurant.create!(restaurant_create_params)
    redirect_to restaurants_path(@restaurants)
  end

  def new
    @restaurant = Restaurant.new
  end

  private

  def restaurant_create_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
