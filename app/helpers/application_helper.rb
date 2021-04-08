module ApplicationHelper
  def show_flash
    output = ''
    output << "<div>#{flash[:notice]}</div>" if flash[:notice]
    output << "<div>#{flash[:alert]}</div>" if flash[:alert]
    output.html_safe
  end

  def show_errors(item)
    output = ''
    if item.errors.any?
      item.errors.full_messages.each do |msg|
        output << "<div class='input-group'>#{msg}</div>"
      end
    end
    output.html_safe
  end

  def show_header
    output = ''
    output << if logged_in?
                "<a href='#'> Welcome #{current_user.name}</a> | #{link_to 'Log Out', log_out_path, method: :delete
                                                                 }"
              else
                "#{link_to 'Register', sign_up_path} | #{link_to 'Login', log_in_path}"
              end
    output.html_safe
  end
end
