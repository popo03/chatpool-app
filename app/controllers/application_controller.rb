class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller? 
  before_action :authenticate_user!
  before_action :basic_auth

  private

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up,keys:[:name, :position_id, :email, :password])
    end

    def basic_auth
      authenticate_or_request_with_http_basic do |username, password|
        username == ENV["BASIC_AUTH_USER2"] && password == ENV["BASIC_AUTH_PASSWORD2"] 
      end
    end
end
