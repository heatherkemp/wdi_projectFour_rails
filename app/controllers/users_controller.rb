class UsersController < ApplicationController

    def index
        @user = User.new
    end

    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)

        if @user.save
            session[:user_id] = @user.id
            redirect_to "/users/#{session[:user_id]}/jobs"
        else
            redirect_to root_path
        end
    end

    private

    def user_params
        params.require(:user).permit(:name, :email, :password)
    end
end