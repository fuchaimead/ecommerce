class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def current_order
    if !session[:user_id].nil?
      Cart.find(session[:user_id])
    else
      Cart.new
    end
  end
  
    protected
    
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
      end
end
