class ApplicationController < ActionController::Base

  before_action :authenticate_user!, except: [:top,:about]
  before_action :configure_permitted_parameters, if: :devise_controller?
  
  #サインイン後の遷移先
  def after_sign_in_path_for(resource)
    about_path
  end
  
  #サインアウト後の遷移先
  def after_sign_out_path_for(resource)
    about_path
  end

  protected

  def configure_permitted_parameters
    #アカウント作成時名前の保存も可能となる。
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end

end
