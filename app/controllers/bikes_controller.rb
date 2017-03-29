class BikesController < ApplicationController
	def index
		@bikes = Bike.all
	end

	def show
		@bike = Bike.find(params[:id])
	end

	def new
		@bike = Bike.new
	end

	def create
		#render plain: params[:bike].inspect

		#@bike = Bike.new(params.require(:bike).permit(:title, :description))
		@bike = Bike.new(bike_params)
=begin	
		@bike.save
  		redirect_to @bike
=end 	
		if @bike.save
    		redirect_to @bike
  		else
    		render 'new'
  		end 		
	end

	private 
		def bike_params
			params.require(:bike).permit(:title, :description)
		end
end
