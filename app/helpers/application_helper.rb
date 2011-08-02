module ApplicationHelper
  # Return a title on a per-page basis.
  def title
    base_title = "Ruby on Rails Tutorial Sample App"
    if @title_tag.nil?
      base_title
    else
      "#{base_title} | #{@title_tag}"
    end
  end
end
