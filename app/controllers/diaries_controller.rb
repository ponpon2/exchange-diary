class DiariesController < ApplicationController
  before_action :set_diary

  def new
    @diary = Diary.new
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def set_diary
    @diaries = Diary.find(params[:id])
  end
end