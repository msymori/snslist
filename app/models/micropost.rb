class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :nices
  has_many :nicers, through: :nices, source: :user

  mount_uploader :img, ImgUploader
  validates :content, presence: true, length: { maximum: 255 }

end