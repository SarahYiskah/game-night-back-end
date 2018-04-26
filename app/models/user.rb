class User < ApplicationRecord
  has_many :user_rooms
  has_many :rooms, through: :user_rooms
  validates :name, presence: true, uniqueness: true
  validates :image, presence: true
end
