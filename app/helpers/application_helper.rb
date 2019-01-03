module ApplicationHelper
  def render_title
    return @title if defined?(@title)
    "Sports Field Solutions"
  end

end
