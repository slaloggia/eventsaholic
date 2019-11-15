class VenuesController < ApplicationController
    before_action :find_venue, only: [:show]

    def index
        @venues = Venue.search(params[:search])
    end

    def show
        render :layout => 'venues/show'
    end

    private
    
    def venue_params
        params.require(:venue).permit(:name, :location, :capacity, :type, :search)
    end

    def find_venue
        @venue = Venue.find(params[:id])
    end

end
