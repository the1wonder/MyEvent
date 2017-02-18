class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user ,:logged_in?
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def logged_in?
    !!current_user
  end

  before_filter :configure_permitted_parameters, if: :devise_controller?

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:name, :title, :company_name, :mobile,:website, :telephone, :email, :password) }
            devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:name, :title, :company_name, :mobile, :website, :telephone, :email, :password, :current_password) }
        end

end
