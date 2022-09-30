class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post

  validates :text, presence: true

  after_save :post_comments_counter
 

  private

  def post_comments_counter
    post.increment!(:comments_counter)
  end
end
