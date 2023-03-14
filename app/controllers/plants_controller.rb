class PlantsController < ApplicationController

    # GET /plants
    def index
        plants = Plant.all
        render json: plants
    end

    # GET /plants/:id
    def show
        plant = Plant.find_by(id:params[:id])
        render json: plant, status: :ok
    end

    # POST /plants
    def create
        new_plant = Plant.create(plant_params)
        render json: new_plant, status: :created
    end

    private

    def plant_params
        params.permit(:name, :image, :price)
    end
end
