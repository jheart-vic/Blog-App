class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post

  validates :text, presence: true

  after_save :post_comments_counter
  after_destroy :comment_decrement

  private

  def post_comments_counter
    post.increment!(:comments_counter)
  end

  def comment_decrement
    post.decrement!(:comments_counter)
  end
end
