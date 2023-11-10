class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: %i[name email password password_confirmation cpf rg dob
                                                         zip_code address address_number complement state city
                                                         neighbourhood country mobile01 mobile02 phone01 phone02])
  end
end
