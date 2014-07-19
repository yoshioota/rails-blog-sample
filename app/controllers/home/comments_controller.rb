class Home::CommentsController < AuthorizedController

  def create
    @article = Article.published.find(params[:comment][:article_id])
    @comment = @article.comments.build(comment_params)
    @comment.user = current_user
    @comment.save
  end

  private

    def comment_params
      params.require(:comment).permit(:body)
    end

end
