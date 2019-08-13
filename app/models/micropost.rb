class Micropost < ApplicationRecord
  belongs_to :user
  has_many :comments
  has_many :likes, dependent: :destroy
  has_many :iine_users, through: :likes, source: :user
  has_many :notifications,dependent: :destroy
  default_scope -> { order(created_at: :desc) }
  validates :user_id, presence: true
  validates :content,  length: { maximum: 140 }
  mount_uploader :img, ImgUploader
  def iine(user)
    likes.create(user_id: user.id)
  end
  def uniine(user)
    likes.find_by(user_id: user.id).destroy
  end
  def iine?(user)
    iine_users.include?(user)
  end
  def create_notification_by(current_user)
    notification=current_user.active_notifications.new(
      micropost_id:self.id,
      visited_id:self.user_id,
      action:"like"
    )
    notification.save if notification.valid?
  end
  def self.search(search) #ここでのself.はMicropost.を意味する
    if search
      where(['content LIKE ?', "%#{search}%"]) #検索とcontentの部分一致を表示。Micropost.は省略。
    else
      all #全て表示。Micropost.は省略。
    end
  end
  
end
