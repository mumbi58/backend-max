class SessionsController < ApplicationController
    skip_before_action :authorize, only: :create
  
    def create
      user = User.find_by(telephone_number: params[:telephone_number])
      if user&.authenticate(params[:password])
        session[:user_id] = user.id
        render json: { message: "Session created successfully" }
      else
        render json: { error: "Not authorized" }, status: :unauthorized
      end
    end
  end
  