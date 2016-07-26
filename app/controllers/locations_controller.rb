class LocationsController < ApplicationController
	def index
		@locations = Location.all
		flash[:error] = 'No locations registered' if.@Locations.empty?
	end
end