class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :orientation, :gender, :zodiac, :preferred_date_ideas, :about_me, :age, :photo])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :orientation, :zodiac, :gender, :preferred_date_ideas, :about_me, :age, :photo])
  end
  # helper_method :resource_name, :resource, :devise_mapping, :resource_class
  # #methods for sign up as a homepage
  # def resource_name
  #   :user
  # end

  # def resource
  #   @resource ||= User.new
  # end

  # def resource_class
  #   User
  # end

  # def devise_mapping
  #   @devise_mapping ||= Devise.mappings[:user]
  # end

  # def after_sign_in_path_for(resource)
  #   users_path # your path
  # end

  def after_sign_up_path_for(resource)
    "/users/edit"   #edit_user_registration_path # your path
  end
end
