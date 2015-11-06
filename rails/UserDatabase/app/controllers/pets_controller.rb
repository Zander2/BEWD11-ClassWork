class PetsController < ApplicationController
  
    
    def index
        @pet_new = Pet.new
        @user_id = params[:user_id]
        @user = User.find(@user_id)
        @pets = User.find(@user_id).pets
        render "pets"
    end
    
    def edit
        @user_id = params[:user_id]
        pet_id = params[:id]
        @pet = Pet.find(pet_id)
        render "edit_pet"
    end
    
    def update
        if params[:commit] == "Save"
            user_id = params[:user_id]
            pet_id = params[:id]
            pet = Pet.find(pet_id)
            pet.update(pet_params)
            redirect_to "/users/#{user_id}/pets"
        elsif params[:commit] == "Delete"
            !destroy
        end
        
        
    end
    
    def create
        user_id = params[:user_id]
        @pet = User.find(user_id).pets.new(pet_params)
        @pet.save
        
        if @pet.valid?
            redirect_to "/users/#{user_id}/pets"
        else
            @pet.errors.full_messages.each do |field, error|
                p error
                @error = "The field " + field.to_s + " " + error.to_s
            end
            p "loop final @error = "
            p @error
            redirect_to "/users/#{user_id}/pets"
        end
    end
    
    def destroy
        user_id = params[:user_id]
        pet_id = params[:id]
        pet = Pet.find(pet_id)
        pet.destroy
        redirect_to "/users/#{user_id}/pets"
    end
    
end

private
    def pet_params
        params.require(:pet).permit(:name, :pet_type, :gender, :age)
    end
