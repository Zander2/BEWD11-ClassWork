class HomesController < ApplicationController
    
    def index
        @user = current_user
        p "user is"
        p @user
        render "home"
    end
end
