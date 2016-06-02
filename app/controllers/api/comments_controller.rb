class Api::CommentsController < ApplicationController


  def index
    @comments = Comment.all

    respond_to do |format|
      format.html
      format.json {render json: @comments}
    end

  end

  def create
    render plain: params[:comment].inspect
    #@article = Article.find(params[:article_id])
    #@comment = @article.comments.create(comment_params)
    #redirect_to article_path(@article)
  end
  def destroy
    @article = Article.find(params[:article_id])
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    #if request.url.equal?(admin_comment_url)
      #redirect_to admin_comments_url
    #else
      #redirect_to article_path(@article)
    #end
    redirect_to :back



    end

  def show

  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end