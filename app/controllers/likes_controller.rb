class LikesController < ApplicationController
    def index
        render json: Like.all
    end

    def show
        render json: Like.find(params[:id])
    end

    def create
        like = Like.create(likes_params)
        render json: like
    end

    def update
    end

    def destroy
        puts params
        like = Like.find(params[:id])
        like.delete
    end

    private

    def likes_params
        params.require(:like).permit(:liker_id, :liked_id)
    end
end
