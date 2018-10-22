class UsersController < ApplicationController
    def index
        render json: User.all
    end

    def show
        render json: User.find(params[:id])
    end

    def create
        users = User.create(users_params)
        render json: user
    end

    def update
    end

    def destroy
    end

    private

    def users_params
        params.require(:users).permit(:name)
    end
end
