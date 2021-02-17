class FlightsController < ApplicationController

    def index
        redirect_to destinations_path
    end

    def show
    end

    def destroy_departure
        @flight = Flight.destroy(params[:id])
        redirect_to vacation_path(flash[:vacation_id])
    end

    def destroy_arrival
        @flight = Flight.destroy(params[:id])
        redirect_to vacation_path(flash[:vacation_id])
    end
end
