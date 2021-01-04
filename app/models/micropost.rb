class Micropost < ApplicationRecord
  belongs_to :user
  has_many :users
  has_many :favorites
  has_many :liked_by, through: :favorites, source: :user
  
  validates :content, presence: true, length: { maximum: 255 }
end
