class Picture < ApplicationRecord
  belongs_to :user
  validates :photo, :score, presence: true

  mount_uploader :photo, PhotoUploader
end
