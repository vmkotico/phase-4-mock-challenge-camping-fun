class CampersController < ApplicationController

    def index
        campers = Camper.all 
        render json: campers
    end

    def show
        camper = Camper.find(params[:id])
        render json: camper, status: :ok 
    end 

    def create
        new_camper = Camper.create(camper_params) 
    end 

    private 

    def camper_params 
        params.permit[:name, :age]
    end 

end
