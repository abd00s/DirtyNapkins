class RestaurantsController < ApplicationController
	before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
	
	def welcome
		@message = "Welcome to Dirty Napkins"
	end

	def index
		@restaurants = Restaurant.all
	end

	def show
		
	end

	def new
		
	end

	def edit
		
	end

	def create
		
	end

	def update
		
	end

	def destroy
		
	end

	private
	def set_restaurant
		@restaurant = Restaurant.find(params[:id])	
	end

	def restaurant_params
		params.require(:restaurant).permit(:name, :address, :description, :open_hour, :close_hour, :capacity)
	end		
end