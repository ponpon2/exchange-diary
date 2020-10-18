class Image < ApplicationRecord
  mount_uploader :src, ImageUploader
  belongs_to :diary, optional: true
  
  validates :src, presence: true
end
