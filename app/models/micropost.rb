class Micropost < ApplicationRecord
  belongs_to :user
  
  has_many :nices
  has_many :nicers, through: :nices, source: :user

  validates :content, presence: true, length: { maximum: 255 }
end