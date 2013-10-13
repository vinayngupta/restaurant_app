class RestaurantsController < ApplicationController
  
  def index
  	@restaurant = Restaurant.all
  end

  def new
  	@restaurant = Restaurant.new
  end

  def create
  	@restaurant = Restaurant.new(params[:restaurant].permit(:name, :description))
  	@restaurant.save

  	redirect_to @restaurant #this is long version - restaurant_path(@restaurant.id) 
  end

  def show
  	@restaurant = Restaurant.find(params[:id])
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
    @restaurant_edited = @restaurant.save
  end

  def update
    redirect_to restaurant_path
  end

end
