class MypagesController < ApplicationController
  def index
    @mypage_diaries = Diary.where(myself_id: current_user.id).where(other_id: nil)
  end
end