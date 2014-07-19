module AddBreadcrumbs
  extend ActiveSupport::Concern

  included do
    before_action :_set_breadcrumbs
  end

  def _set_breadcrumbs

    if %r|home/articles| === controller_path
      add_breadcrumb_home
      add_breadcrumb '記事一覧', home_articles_path
      case action_name
      when 'new'
        add_breadcrumb '新規作成'
      end
    end
  end
end