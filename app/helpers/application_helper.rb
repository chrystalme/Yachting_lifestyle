module ApplicationHelper
  def show_flash
    output = ''
    if flash[:notice]
      output << "<div>#{flash[:notice]}</div>"
    end
    if flash[:alert]
      output << "<div>#{flash[:alert]}</div>"
    end
    output.html_safe
  end
end
