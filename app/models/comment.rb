class Comment < ApplicationRecord
  # The user who wrote the comment
  belongs_to :author, class_name: "User"

  # The photo the comment is on
  belongs_to :photo
end
