class Home::ArticlesController < AuthorizedController

  include AddBreadcrumbs

  before_action :set_article, only: [:show, :edit, :update, :destroy, :publish, :draft]

  # GET /articles
  def index
    @articles = current_user.articles.all
  end

  # GET /articles/1
  def show
    add_breadcrumb @article.title
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
    add_breadcrumb @article.title, [:home, @article]
    add_breadcrumb '編集'
  end

  # POST /articles
  def create
    @article = current_user.articles.build(article_params)
    @article.body = RedcarpetCompiler.compile(@article.body_source)

    if @article.valid?
      @article.save!
      case params[:ope][:cmd]
      when 'publish'
        @article.publish!
        flash[:success] = '記事を公開しました。'
      when 'save'
        flash[:success] = '記事を保存しました。'
      else
        raise
      end
      redirect_to [:home, @article]
    else
      render :new
    end
  end

  def publish
    @article.publish!
    flash[:success] = '記事を公開しました。'
    redirect_to [:home, @article]
  end

  def draft
    @article.draft!
    flash[:success] = '記事を下書きにしました。'
    redirect_to [:home, @article]
  end

  # PATCH/PUT /articles/1
  def update

    @article.assign_attributes(article_params)

    if @article.valid?
      @article.body = RedcarpetCompiler.compile(@article.body_source)
      @article.save!

      flash[:success] = '記事を更新しました。'
      redirect_to [:home, @article]
    else
      render :edit
    end
  end

  # DELETE /articles/1
  def destroy
    @article.destroy

    flash[:success] = '記事を削除しました。'
    redirect_to home_articles_url
  end

  private

    def set_article
      @article = current_user.articles.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body_source)
    end
end
