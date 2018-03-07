class Picture < ApplicationRecord
  belongs_to :user
  validates :photo, presence: true
  acts_as_votable
  mount_uploader :photo, PhotoUploader


end
