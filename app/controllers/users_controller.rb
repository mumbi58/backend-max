class UsersController < ApplicationController
    skip_before_action :authorize, only: :create
    def create
        user = User.new(user_params)
    
        if user.save
          render json: user
        else
          render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
      end
    private 
    def user_params
        params.permit(:name, :password, :telephone_number, :email)
    end
end
