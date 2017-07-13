class PostsController < ApplicationController
  before_action :authenticate_user!

  def index
    @posts = Post.all

  end

  def new
    @post = Post.new
  end

  def create
    @post  = Post.new(post_params)
    redirect_to root_path, flash: { notice: "New post successfully created !" } if @post.save
  end

  private
  def post_params
    params.require(:post).permit(:title, :content)
    #Bind params, to secure SQL injection
  end

end
