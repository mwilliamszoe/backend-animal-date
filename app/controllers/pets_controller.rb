class PetsController < ApplicationController

    def index
        pets = Pet.all
        pets.each do |pet|
            pet.likes = pet.liker_pets.length
            pet.save
        end
        render json: pets
    end

    def show
        pet = Pet.find(params[:id])
        likes = pet.liker_pets.length
        render json: {likes: likes, pet: pet}
    end

    def create
        pet = Pet.create(pets_params)
        render json: pet
    end

    def update

        # create no like using liker_id and liked_id
        like = Like.create(liker_id: params[:liker_id], liked_id: params[:liked_id])
        # byebug
        # number of likers for liked pet
        number_of_likes = Pet.find(params[:liked_id]).liker_pets.length
        
        if like.save
            render json: {likes: number_of_likes}
        else
            render json: like.errors, status: :bad_request
        end
    end

    def destroy
    end


    private

    def pets_params
        params.require(:pet).permit(:name, :species, :user_id)
    end
end
