class VacationActivitiesController < ApplicationController

    def destroy
        @vaca_activity = VacationActivity.find(params[:id])
        @vaca_activity.destroy
        redirect_to vacation_path(@vaca_activity.vacation)
    end
end
