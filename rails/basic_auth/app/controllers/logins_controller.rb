class LoginsController < ApplicationController
    
    def index
        @logins = User.new()
        render "login"
    end
    
    def create
        logins = params[:user]
        @user = User.where(email_address: "#{logins[:email_address]}").first 
        if @user
            if @user.authenticate("#{logins[:password]}") == false
                p "wrong password"
                    flash[:error] = "wrong password"
                    redirect_to logins_path
            else
                p "valid"
                render "user_page"
            end
        else
            flash[:error] = "User not found"
            redirect_to logins_path
        end
        
    end
end
