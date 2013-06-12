class ApplicationController < ActionController::Base
  protect_from_forgery
  respond_to :json

  helper_method :current_user
  helper_method :authorize

  private

    def current_user
      @current_user ||= User.find(session[:user_id]) if session[:user_id]
    end

    def authorize
      unless current_user
        redirect_to login_url, alert: "Please log in."
      end
    end

end
