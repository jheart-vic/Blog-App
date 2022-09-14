class Post < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :comment

  def update_users_posts=(count)
    user.update_attribute 'posts_counter', count
  end

  def five_last_comments
    comments.last(5)
  end
end
