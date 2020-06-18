class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.create(configure_sign_up_params)
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to "/profils/new"
    else
      render "new"
    end
  end

  private
  def configure_sign_up_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:attribute])
  end

end

