class Photo < ApplicationRecord
  # The user who owns the photo
  belongs_to :owner, class_name: "User"

  # Comments made on the photo
  has_many :comments

  # Users who wrote those comments
  has_many :commenters, through: :comments, source: :author

  # Likes on the photo
  has_many :likes

  # Users who liked the photo
  has_many :fans, through: :likes, source: :fan
end
