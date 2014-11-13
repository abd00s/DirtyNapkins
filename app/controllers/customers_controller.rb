class CustomersController < ApplicationController
	before_action :set_customer, only: [:show, :edit, :update, :destroy]

	def index
		@customers = Customer.all
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
	def set_customer
		@customer = Customer.find(params[:id])	
	end

	def customer_params
		params.require(:customer).permit(:name, :email, :password, :password_confirmation, :type)
	end
end
