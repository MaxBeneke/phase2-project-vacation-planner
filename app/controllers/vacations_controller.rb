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

    def edit_flight
        find_vacation
    end

    def destroy
        @vacation.destroy
        redirect_to user_path(current_user)
    end

    private

    def vacation_params
        params.require(:vacation).permit(:user_id, :destination_id)
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