class ApplicationController < ActionController::Base
    # helper_method :current_user, :logged_in?
    before_action :fetch_user
    

    def fetch_user
        @logged_in = logged_in?
        if @logged_in
            @user = User.find(session[:user_id])
        else
            #  redirect_to login_path
        end
    end


    def logged_in?
        !!session[:user_id]
    end

    def log_out_user!
        session.delete(:user_id)
    end 
end

  

    


