class Micropost < ApplicationRecord
  belongs_to :user
  has_many :users
  
  validates :content, presence: true, length: { maximum: 255 }
end
