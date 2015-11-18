class Like < ActiveRecord::Base

  validates :user_id, presence: true, uniqueness: {scope: :photo, message: "user can only like a message once"}

  validates :photo_id, presence: true

  belongs_to :user
  belongs_to :photo

end
