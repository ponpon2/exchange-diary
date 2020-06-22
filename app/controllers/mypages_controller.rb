class MypagesController < ApplicationController

  def index
   @user = User.all
  end

  def show
    @user = User.find_by(id: current_user.id)
    @profile = Profile.where(usr_id: @user.id)
  end


end