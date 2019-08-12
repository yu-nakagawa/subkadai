class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :micropost
  default_scope -> { order(created_at: :desc) }
  has_many :notifications,dependent: :destroy
end
