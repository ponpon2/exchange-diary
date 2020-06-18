class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  
  protected

  # methodをオーバーライドする。
  def configure_permitted_parameters
    sign_up_params = [:username, :password, :password_confirmation]
    sign_in_params = [:username, :password, :remember_me]
    # account_update, sign_in, sign_up, のフィールドを再定義
    devise_parameter_sanitizer.permit(:sign_up, keys: sign_up_params)
    devise_parameter_sanitizer.permit(:sign_in, keys: sign_in_params)
    devise_parameter_sanitizer.permit(:account_update, keys: sign_up_params)
  end

  protected

  # loginしたらhome画面へリダイレクトし、indexアクションを実行する
  def after_sign_in_path_for(resource)
    index_home_path(resource)
  end
end
