# class ApplicationController < ActionController::Base
#   protect_from_forgery
#   before_action :authenticate_user!

#   skip_before_action :authenticate_user!, only: :home

#   def home
#   end

# end


class ApplicationController < ActionController::Base
  # [...]
  protect_from_forgery
  before_action :authenticate_user!

  skip_before_action :authenticate_user!, only: :home

  def home
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nom, :prenom, :age])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:nom, :prenom, :age, :docpermis])
  end
end
