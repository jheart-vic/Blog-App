class Post < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :comments

  after_save :update_post_counter
  validates :title, presence: true, length: { in: 1..250 }
  validates :comments_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  validates :likes_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }

  def five_last_comments
    comments.last(5)
  end

  private

  def update_post_counter
    user.increment!(:posts_counter)
  end
end
