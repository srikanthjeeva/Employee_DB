# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def display_date(text)
    return nil unless text
    return text if text.is_a?(String)
    text.strftime("%Y-%m-%d")
  end
end
