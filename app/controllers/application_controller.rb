class ApplicationController < ActionController::Base
    skip_before_action :verify_authenticity_token

    include ActionController::Cookies
    before_action :authorize
    helper_method :current_user

  
    def authorize
      unless session[:user_id]
        render json: { error: "Sorry, you are not authorized" }, status: :unauthorized
      end
    end
    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end
  end
  