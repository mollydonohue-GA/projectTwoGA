class RegistrationsController < Devise::RegistrationsController


  private

  def configure_permitted_parameters

    devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:email, :password) }
    devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation) }
    devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }

  end

  def sign_up_params

    params.require(:user).permit(:username, :email, :password, :password_confirmation)

  end

  def account_update_params

    params.require(:user).permit(:username, :email, :password, :password_confirmation, :current_password)

  end

  def after_update_path_for(resource)

    root_path

  end

  def after_sign_up_path_for(resource)

    root_path

  end

  def after_sign_in_path_for(resource)

    stored_location_for(resource) || root_path

  end


end