module ApplicationHelper

  def safe_date_localize(time)
    time ? l(time) : ''
  end
end
