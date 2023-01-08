class ApplicationController < ActionController::Base
    before_action :authenticate_user!, except: [:show]
    layout :layout_by_resource
    include Pundit::Authorization
    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  private

  def layout_by_resource
    if devise_controller?
      "devise"
    else
      "application"
    end
  end

  def user_not_authorized
    flash[:alert] = 'No estas autorizado para ingresar a esta sección.'
    redirect_to root_path
  end
end
