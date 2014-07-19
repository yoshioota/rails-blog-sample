class U::ArticlesController < ApplicationController

  before_action :set_user, only: [:index, :show]
  before_action :set_article, only: [:show]

  # GET /articles
  def index
    @articles = @user.articles.published.includes(:user, {comments: :user}).all
  end

  # GET /articles/1
  def show
    @comment = Comment.new(article_id: @article.id)
  end

  private

    def set_user
      @user = User.where(screen_name: params[:u_id]).first
    end

    def set_article
      @article = Article.published.includes(:user, {comments: :user}).find(params[:id])
    end
end
