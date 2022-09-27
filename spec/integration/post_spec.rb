require 'rails_helper'
RSpec.describe 'User pages test index/show ', type: :feature do
  before(:all) do
    @first_user = User.create(name: 'Victor Aka', photo: 'https://avatars.githubusercontent.com/u/101924220?v=4',
                              bio: 'test for User')
    @post1 = Post.create(title: 'Rspec test 1', text: 'rspec test for post', user: @first_user)
    @post2 = Post.create(title: 'Rspec test 2', text: 'rspec test for post', user: @first_user)
    @post3 = Post.create(title: 'Rspec test 3', text: 'rspec test for post', user: @first_user)
    @post4 = Post.create(title: 'Rspec test 4', text: 'rspec test for post', user: @first_user)
  end
  describe 'User show page test' do
    it 'Should show the username ' do
      visit user_path(@first_user)
      expect(page).to have_content(@first_user.name)
    end
    it 'Should show the profile picture' do
      visit user_path(@first_user)
      expect(page).to have_selector("img[src='#{@first_user.photo}']")
    end
    it 'Should show the Number of posts' do
      visit user_path(@first_user)
      expect(page).to have_text('4 post(s) has been published')
    end
    it 'Should show the bio' do
      visit user_path(@first_user)
      expect(page).to have_content(@first_user.bio)
    end
    it 'Should show user recent 3 posts' do
      visit user_path(@first_user)
      expect(page).to have_content('Rspec test 2')
      expect(page).to have_content('Rspec test 3')
      expect(page).to have_content('Rspec test 4')
    end

    it 'Should fetch all comments for a post' do
      @comment = Comment.create(text: '', user: @first_user, post: @post4)
      visit user_posts_path(@first_user, @post4)
      expect(page).to have_content(@comment.text)
    end

    it 'Should show redirects me to that post\'s show page. ' do
      visit user_path(@first_user)
      click_on @post4.title
      expect(page).to have_current_path(user_post_path(@first_user, @post4))
    end
  end
end
