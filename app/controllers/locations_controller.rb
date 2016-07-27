class LocationsController < ApplicationController
	def index
		@locations = Location.all
		flash[:error] = 'No locations registered' if.@locations.empty?
	end
	def new
		@user = current_user
		@location = Location.new
	end
	def create
		@location = Location.new(location_params)
		@location.user_id = current_user.id
		if @location.save
			flash[:success] = 'Location registered successfully.'
			redirect_to user_locations_path(current_user)
		else
			flash[:error] = @location.errors.full_messages.join('.')
			render 'new'
		end
	end

		def location_params
			params.require(:name).permit(:latitude, :longitude, :description, :max_slots, :address)
		end
		private :location_params
	end
end