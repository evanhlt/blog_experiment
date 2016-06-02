class Admin::CommentsController < ApplicationController

  #http_basic_authenticate_with name: "admin", password: "password"
  before_action :authenticate_user!

  def index
    @comments = Comment.paginate(:page => params[:page], :per_page => 10).order('created_at DESC')
  end
  def create
    @article = Article.find(params[:article_id])
    @comment = @article.comments.create(comment_params)
    redirect_to article_path(@article)
  end
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to admin_comments_url
  end

  def show

  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end