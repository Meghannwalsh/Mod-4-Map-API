class UsersController < ApplicationController 

    def index 
        users = User.all
        render json: users
    end 

    def show 
        @user = User.find(user_params)
    end 

    def create 
        @user = User.create(user_parmas)

        render json: @user
    end 

    private 

    def user_params 
        params.require(:user).permit(:name, :color, :current_location, :password)
    end 
end 