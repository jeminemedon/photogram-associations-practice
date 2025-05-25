class FollowRequest < ApplicationRecord
  # The user who sent the follow request
  belongs_to :sender, class_name: "User"

  # The user who received the follow request
  belongs_to :recipient, class_name: "User"
end
