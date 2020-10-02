class UsersController < ApplicationController
    skip_before_action :fetch_user, only:[:new, :create]

    def index
        @users = User.all 
    end

    def new
        @user = User.new
    end

    def create
        @user = User.create(user_params)
        if @user.valid?
            session[:user_id] = @user.id 
            redirect_to user_path(@user)
        else
            redirect_to "/signup"
        end
    end


        def show
            @user = User.find(params[:id])
            @pictures = @user.pictures
            @comments = @user.comments
        end

        def edit
            @user = User.find(params[:id])
        end

    

        # def destroy
        #     User.find_by(username: params[:id]).destroy
        #     session[:user_id] = nil
        #     redirect_to users_path
        # end



    private 

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end
end


