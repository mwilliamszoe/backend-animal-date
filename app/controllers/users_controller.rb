class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def create
        user = User.create!(user_params)
        render json: user
    end

    def update
    end

    def destroy
        puts params
        user = User.find(params[:id])
        user.delete
    end

    private

    def user_params
        params.require(:user).permit(:name)
    end
end
