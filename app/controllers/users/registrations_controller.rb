class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @users = User.all
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to "/profils/new"
    else
      redirect_to "users/new"
    end
  end

  protected
  def user_params
    params.require(:user).permit(:email, :password, :Password_confirmation)
  end

end
