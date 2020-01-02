class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, unless: :devise_controller?

  protected
    def configure_permitted_parameters
      shared_params = [
        :first_name,
        :last_name,
        :email,
        :password,
        :password_confirmation,
      ]

      devise_parameter_sanitizer.permit(:sign_up,         keys: shared_params)
      devise_parameter_sanitizer.permit(:account_update,  keys: shared_params)
    end

    def set_track
      if params[:track_id]
        @track = Track.find params[:track_id]
      end
    end
end
