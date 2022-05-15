class RegistrationsController < Devise::RegistrationsController
    before_action :configure_permitted_parameters, if: :devise_controller?
    private
    def sign_up_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation) 
    end
    def account_update_params
        params.require(:user).permit(:name, :username, :email, :password, :password_confirmation, :current_password) 
    end
    def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:user, keys: [:name, :username, :email, :password, :password_confirmation])
    end
end