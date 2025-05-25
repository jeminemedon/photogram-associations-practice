class User < ApplicationRecord
  validates :username, presence: true, uniqueness: { case_sensitive: false }

  # Photos where this user is the owner
  has_many :own_photos, class_name: "Photo", foreign_key: "owner_id"

  # Comments written by this user
  has_many :comments, foreign_key: "author_id"

  # Likes made by this user
  has_many :likes, foreign_key: "fan_id"

  # Photos this user has liked
  has_many :liked_photos, through: :likes, source: :photo

  # Photos this user has commented on
  has_many :commented_photos, through: :comments, source: :photo
end
