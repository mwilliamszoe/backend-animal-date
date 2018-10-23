class PetsController < ApplicationController

    def index
        render json: Pet.all
    end

    def show
        render json: Pet.find(params[:id])
    end

    def create
        pet = Pet.create(pets_params)
        render json: pet
    end

    def update
    end

    def destroy
    end

    private

    def pets_params
        params.require(:pet).permit(:name, :species, :user)
    end
end
