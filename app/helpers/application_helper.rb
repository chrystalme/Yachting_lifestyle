module ApplicationHelper
  def show_flash
    output = ''
    output << "<div class='input-group p-3 mb-2 bg-success text-white fs-6'>#{flash[:notice]}</div>" if flash[:notice]
    output << "<div class='input-group p-3 mb-2 bg-danger text-white fs-6'>#{flash[:alert]}</div>" if flash[:alert]
    output.html_safe
  end

  def show_errors(item)
    output = ''
    if item.errors.any?
      item.errors.full_messages.each do |msg|
        output << "<div class='input-group p-3 mb-2 bg-danger text-white fs-6'>#{msg}</div>"
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
  def show_vote_btn(article)
    vote = Vote.find_by(article: article, user: current_user)
    if vote
      link_to('Unvote', article_vote_path(id: vote.id, article_id: article.id), method: :delete, class: 'btn btn-danger')
    else
      link_to('Vote', article_votes_path(article_id: article.id), method: :post, class: 'btn btn-primary')
    end
  end
end
