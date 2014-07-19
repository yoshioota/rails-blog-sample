class HomeController < AuthorizedController

  def show
    @articles = current_user.articles
    @comments = current_user.comments.includes(:article => :user)
  end
end
