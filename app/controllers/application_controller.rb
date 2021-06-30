class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :authenticate_user!, except: [:top]
  before_action :correct_user, only: [:edit]

  def correct_user
    @micropost = current_user.microposts.find_by(id: params[:id])
      unless @micropost
        redirect_to root_url
      end
  end

  def after_sign_in_path_for(resource)
    user_path(resource)
  end


  protected

    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
    end

end
