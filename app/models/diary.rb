class Diary < ApplicationRecord
  has_many :images, dependent: :destroy
  accepts_nested_attributes_for :images  #日記登録と同時に写真を登録する
end
