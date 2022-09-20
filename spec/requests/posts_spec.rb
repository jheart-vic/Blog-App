require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  before(:each) do
    @user = User.create(name: 'Tom', photo: '', posts_counter: 0)
    @post = Post.create(
      user: @user,
      title: 'Here we are!',
      text: 'Here they go',
      comments_counter: 0,
      likes_counter: 0
    )
    Comment.create(user: @user, post: @post, text: 'Hello bob')
    Comment.create(user: @user, post: @post, text: 'Hello gram')
    Comment.create(user: @user, post: @post, text: 'Hello sam')
  end
  describe 'GET /index' do
    before(:example) { get user_posts_path(@user) } # get(:index)
    it 'assigns all posts to @posts' do
      expect(assigns(:posts)).to eq(Post.all)
    end
    it 'is a success' do
      expect(response).to have_http_status(:ok)
    end
    it "renders 'index' template" do
      expect(response).to render_template('index')
    end
  end

  context ':show' do
    before { get user_post_path(@user, @post) }

    it('status should be :ok') do
      expect(response).to have_http_status(:ok)
    end

    it('rendered :show template') do
      expect(response).to render_template(:show)
    end

    it('should assign Post.where(user_id: params[:user_id], id: params[:id]).first to @post') do
      expect(assigns(:posts)).to eq(@post)
    end

    it('response content should contain `@post.title`') do
      expect(response.body).to match(`%r{<p>#{@post.title}</p>}`)
    end
  end
end
