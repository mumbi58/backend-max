class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    include ActionController::Cookies
    before_action :authorize
  
    def authorize
      unless session[:user_id]
        render json: { error: "Sorry, you are not authorized" }, status: :unauthorized
      end
    end
  end
  