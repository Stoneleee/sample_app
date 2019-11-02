module ApplicationHelper
  def full_title(page_title = '')
      base_title = "示例应用"
      if page_title.empty?
        base_title
      else
        page_title + " | " + base_title
      end
  end
end
