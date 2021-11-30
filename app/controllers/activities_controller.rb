class ActivitiesController < ApplicationController

    def index 
        activities = Activity.all 
        render json: activities 
    end 

    def destroy
        no_mas = Activity.find(params[:id])
        no_mas.destroy
        head :no_content 
    end 

end
