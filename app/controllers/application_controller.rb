class ApplicationController < ActionController::Base

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # http://blog.endpoint.com/2011/10/rails-controllers-and-transactions.html
  around_filter :wrap_transaction, only: [:create, :update, :destroy]

  before_filter do
    @breadcrumbs = []
  end

  def add_breadcrumb_home
    add_breadcrumb('HOME', home_path)
  end

  def add_breadcrumb(label, link = nil)
    @breadcrumbs << [label, link]
  end

  private

    def wrap_transaction
      ActiveRecord::Base.transaction do
        yield
      end
    end
end
