class UsersController < ApplicationController

    def index
    users = User.all
    render json: users
    end

    def show
        user = User.find_by(user_params)
        render json: user

    end

    def update
        user = User.find_by(id: params[:id])
        # byebug
        user.update(user_params)
        render json: user
    end 

    def create
        user = User.create(user_params)
        render json: user
      end


private

def user_params
    params.require(:user).permit(:name, :color, :lat, :lng, :password, :avatar)
end

end

