class Post < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :comment

  after_save :update_post_counter

  private

  def update_post_counter
    user.increment!(:posts_counter)
  end

  def five_last_comments
    comments.last(5)
  end
end
