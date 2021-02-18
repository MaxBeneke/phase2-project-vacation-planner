class VacationsController < ApplicationController
    before_action :find_vacation, except: [:index, :new, :create]
    before_action :owns_vacation, only: [:show, :edit, :update, :destroy, :edit_flight]

    def index
        @vacations = current_user.vacations
    end

    def show
        find_vacation
    end

    def new
        @destinations = Destination.all
        if flash[:attributes]
            @vacation = Vacation.new(flash[:attributes])
        elsif flash[:destination]
            @vacation = Vacation.new(destination_id: flash[:destination])
        else
            @vacation = Vacation.new
        end
    end

    def create
        @vacation = Vacation.create(vacation_params)
        @vacation.update(user_id: current_user.id)
        if @vacation.valid?
            redirect_to vacation_path(@vacation)
        else
            flash[:errors] = @vacation.errors.full_messages
            flash[:attributes] = @vacation.attributes
            redirect_to new_vacation_path
        end
    end

    def edit
    end

    def update
        if @vacation.valid?
            redirect_to vacation_path(@vacation)
        else
            flash[:errors] = @vacation.errors.full_messages
            flash[:attributes] = @vacation.attributes
            redirect_to edit_vacation_path(@vacation)
        end
    end

    def add_flight
        @flight = Flight.new
        find_vacation
    end

    def create_flight
        @flight = Flight.create(arrival_time: params[:arrival_time], departure_time: params[:departure_time], destination_airport: params[:destination_airport] )
        params[:return_or_depart] == "Departing Flight" ? Departure.create(flight_id: @flight.id, vacation_id: find_vacation.id) : Arrival.create(flight_id: @flight.id, vacation_id: find_vacation.id)
        redirect_to vacation_path(find_vacation)
    end

    def find_activity
        find_vacation
    end

    def add_activity
        @vaca_activity = VacationActivity.create(vacation: find_vacation, activity: find_vacation.search_for_activity(params[:name]))
        if @vaca_activity.valid?
           redirect_to vacation_path(find_vacation)
        else 
            flash[:errors] = @vaca_activity.errors.full_messages
            redirect_to find_activity_path(find_vacation)
        end

    end

    def destroy
        @vacation.destroy
        redirect_to user_path(current_user)
    end

    private

    def vacation_params
        params.require(:vacation).permit(:user_id, :destination_id, :day_start, :day_end, :month_start, :month_end, :year_start, :year_end)
    end

    def find_vacation
        @vacation = Vacation.find(params[:id])
    end

    def owns_vacation
        unless @vacation.user_id == current_user.id
            redirect_to user_path(current_user)
        end
    end
end