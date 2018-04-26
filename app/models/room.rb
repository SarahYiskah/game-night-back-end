class Room < ApplicationRecord
  has_many :user_rooms
  has_many :users, through: :user_rooms
  has_many :games
  has_one :scoreboard

  validates :name, presence: true, uniqueness: true
  validates :code, presence: true
end
