class PostsController < ApplicationController
  def index
    @posts = Post.all
    @users = User.all
    render 'posts/index.html.erb'
  end

  def new
    p = Post.new(post_params)
    flash[:errors] = p.errors
    p.save
    redirect_to '/posts/index'
  end

  private
  def post_params
    params.require(:post).permit(:title, :content, :user_id)
   end
end
