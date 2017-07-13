class CommentsController < ApplicationController

  before_action :authenticate_user!

  def create
    @comment = Comment.new(comment_params)
    redirect_to root_path, flash: { notice: "New comment successfully created !" } if @post.save
  end

  private
  def comment_params
    params.require(:comment).permit(:content)
    #Bind params, to secure SQL injection
  end

end
