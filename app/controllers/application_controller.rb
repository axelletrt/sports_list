class ApplicationController < ActionController::Base

    protect_from_forgery with: :exception
    
    before_action :sanitize_devise_params, if: :devise_controller?

    def sanitize_devise_params
        devise_parameter_sanitizer.permit(:sign_up, keys:[:username, :first_name, :last_name, :avatar])
    end 

    
end
