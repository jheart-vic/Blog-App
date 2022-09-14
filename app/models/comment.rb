class Comment < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  belongs_to :post

  def updates_post_counter=(count)
    post.update_attribute 'comments_counter', count
  end
end
