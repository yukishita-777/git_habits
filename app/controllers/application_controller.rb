class ApplicationController < ActionController::Base
    before_action :configure_permitted_prameters, if: :devise_controller?
    
    def configure_permitted_prameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    end
        
    def after_sign_in_path_for(resource)
        user_path(current_user)
    end
end
