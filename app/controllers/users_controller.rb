class UsersController < ApplicationController

    def new
      @user = User.new
    end

    def index
       @users = User.all
    end

    def show
      @user = User.find(params[:id])
    end

    def create
      @user = User.new(user_params)
      if @user.save
        redirect_to users_path, notice: "User successfull"
      else
        render :new
      end
    end

    private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :email, :category, :avatar, :registration_id, :organization_id)
    end
end
