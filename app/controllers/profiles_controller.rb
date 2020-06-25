class ProfilesController < ApplicationController
  def index
    @profile = Profile.all
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.create(profile_params)
      if @profile.save
        redirect_to mypage_path
      else
        render 'new'
      end
  end

  private
    def profile_params
      params.permit(:name, :birth, :blood_type_id, :sign_id).merge(user_id: current_user.id)
    end
end