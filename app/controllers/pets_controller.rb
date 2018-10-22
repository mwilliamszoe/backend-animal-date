class PetsController < ApplicationController

    def index
        render json: Pet.all
    end

    def show
        render json: Pet.find(params[:id])
    end

    def create
        pets = Pet.create(pets_params)
        render json: pet
    end

    def update
    end

    def destroy
    end

    private

    def pets_params
        params.require(:pets).permit(:name, :species)
    end
end
