module UsersHelper
  def show_featured
    output = ''
    output << if @featured_article.present?
                "#{cl_image_tag(@featured_article.first.image.key, width: 1000, crop: :scale)}
      <div class='feature-sub'><h6><strong>#{link_to(@featured_article.first.title, article_path(@featured_article.first))}</strong></h6>
      <p> #{@featured_article.first.text.truncate_words(30)}</p></div>"
              else
                "<h6 class='anchor'><strong>You have no Featured articles. Get creating and voting.</strong></h6>"
              end
    output.html_safe
  end

  def show_others
    output = ''
    Article.others.ordered_by_most_recent.each do |article|
      next unless article.image.attached?

      output << "<div class='col-3'>
        <div class='other-article'>
          #{link_to(cl_image_tag(article.image.key, width: 600, crop: :scale), article_path(article))}
          <p>
            #{article.text.truncate_words(5)}
          </p>
          <h5 class=''>#{link_to(article.category.name,
                                 category_path(article.category.id))} </h5>
        </div>
      </div>"
    end
    output.html_safe
  end
end
