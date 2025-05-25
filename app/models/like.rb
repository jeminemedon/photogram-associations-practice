class Like < ApplicationRecord
  # The user who liked the photo
  belongs_to :fan, class_name: "User"

  # The photo that was liked
  belongs_to :photo
end
