class UsersController < ApplicationController

    def index
        
    end

    def new
    end

    def create
        user = User.create(user_params)
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end