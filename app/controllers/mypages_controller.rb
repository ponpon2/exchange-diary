class MypagesController < ApplicationController

  def index
    @user = User.find(params[:id])
    @profiles = Profile.where(user_id: @user.id)
  end

end