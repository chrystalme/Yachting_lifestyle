module UsersHelper
  def show_featured
    output = ''
    featured_article = Article.featured
    if featured_article.present? && featured_article.image.attached?
      output << "#{cl_image_tag(featured_article.image.key, width: 1000, crop: :scale)}
      <h6><strong>#{link_to(featured_article.title, article_path(featured_article))}</strong></h6>
      <p> #{featured_article.text.truncate_words(30)}</p>"      
    else
      output << '<h6><strong>You have no Featured articles. Get creating and voting.</strong></h6>'      
    end
    output.html_safe
  end

  def show_others
    output = ''
    Article.others.each do |article|
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
