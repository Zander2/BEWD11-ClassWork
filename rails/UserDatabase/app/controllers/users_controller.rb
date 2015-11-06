class UsersController < ApplicationController
    def index
        @users = User.all.order(:firstname)
        @user = User.new
        render "index"
    end
    
    def edit
        id = params[:id]
        @user = User.find(id)
        render "edit"
    end

    def update
        if params[:commit] == "Save"
            user = User.find(params[:id]).update_attributes(user_params)
            redirect_to "/users"
        elsif params[:commit] == "Delete"
            !destroy
        end
    end
    
    def create
        @user = User.new(user_params)
        @user.save
        
        if @user.valid?
            redirect_to "/users"
        else
            @user.errors.full_messages.each do |field, error|
                p error.to_s
                flash[:error] = "The field " + field.to_s + " " + error.to_s
            end
            redirect_to users_path
        end
    end
    
    def destroy
        user = User.find(params[:id])
        user.destroy
        redirect_to "/users"
    end

private    
    def user_params
        params.require(:user).permit(:firstname, :lastname, :username, :role)
    end
end
