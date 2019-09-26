class UsersController < ApplicationController

    def index
    users = User.all
    render json: users
    end

    def show
        user = User.find(user_params)
        render json: user

    end


end

def user_params
    require.params(:user).permit(:name, :color, :current_location)
end