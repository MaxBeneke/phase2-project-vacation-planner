class VacationsController < ApplicationController
    before_action :find_vacation, except: [:index, :new, :create]

    def index
        @vacations = current_user.vacations
    end

    def show
    end

    def new
        if flash[:attributes]
            @vacation = Vacation.new(flash[:attributes])
        else
            @vacation = Vacation.new
        end
    end

    def create
        @vacation = Vacation.create(vacation_params)
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
end