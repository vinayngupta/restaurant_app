class RestaurantsController < ApplicationController
  
  def index
  	@restaurant = Restaurant.all
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(restaurant_params)
  	@restaurant.save

  	redirect_to @restaurant #this is long version - restaurant_path(@restaurant.id) 
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params)
    if @restaurant.save
      redirect_to restaurants_path
    else
      render 'edit'
    end
  end

  private
    def restaurant_params
        params.require(:restaurant).permit(:name, :description)
    end
end
