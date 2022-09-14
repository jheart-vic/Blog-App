class Like < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post

  def updates_post_counter=(count)
    posts.update_attribute 'likes_counter', count
  end
end
