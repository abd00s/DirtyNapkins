class ReservationsController < ApplicationController
	before_action :set_reservation, only: [:show, :edit, :update, :destroy]

	def index
		@reservations = Reservation.all
	end

	def show
		
	end

	def new
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reservation = @restaurant.reservations.new
	end

	def edit
		
	end

	def create
		@restaurant = Restaurant.find(params[:restaurant_id])
		@reservation = @restaurant.reservations.create(params[:reservation])
	end

	def update
		
	end

	def destroy
		
	end

	private
	def set_reservation
		@reservation = Reservation.find(params[:id])	
	end

	def reservation_params
		params.require(:reservation).permit(:restaurant_id, :customer_id, :date, :time, :size)
	end	
end
