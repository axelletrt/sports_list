class ApplicationController < ActionController::Base
    
    protect_from_forgery with: :exception
    
    before_action :sanitize_devise_params, if: :devise_controller?
    #before_action :sanitize_devise_params_users, if: :users_controller?

    #We add two parameters for the subscription of the professional 

    def sanitize_devise_params

        devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name])
        devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name, :avatar_user])

    end 


   # def sanitize_devise_params_users

    #    devise_parameter_sanitizer.permit(:sign_up, keys:[:first_name, :last_name, :avatar_user])
     #   devise_parameter_sanitizer.permit(:account_update, keys:[:first_name, :last_name, :avatar_user])

    #end 

end
