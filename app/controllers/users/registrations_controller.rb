class Users::RegistrationsController < Devise::RegistrationsController
  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      flash[:notice] = "ユーザー登録が完了しました"
      redirect_to "/profils/new"
    else
      redirect_to "users/new"
    end
  end

  private
  def user_params
    params.require(:user).permit(:email, :password)
  end

end

