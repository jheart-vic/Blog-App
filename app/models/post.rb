class Post < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :comments, foreign_key: :post_id, dependent: :delete_all
  has_many :likes, foreign_key: :post_id, dependent: :delete_all

  after_save :update_post_counter
  validates :title, presence: true, length: { in: 1..250 }
  validates :comments_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def five_last_comments
    comments.includes(:user, :post).last(5)
  end

  private

  def update_post_counter
    user.increment!(:posts_counter)
  end
end
