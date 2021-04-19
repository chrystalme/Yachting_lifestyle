module UsersHelper
  def show_featured
    output = ''
    featured_article = Article.featured
    if featured_article.nil?
      art = Article.ordered_by_most_recent.first
       output << "#{image_tag(art.image.variant(resize_to_limit: [1000, 600]))}
    <h6><strong>#{link_to(art.title, article_path(art))}</strong></h6>
    <p> #{art.text.truncate_words(30)}</p>"
    else featured_article.image.attached?
      output << "#{image_tag(featured_article.image.variant(resize_to_limit: [1000, 600]))}
    <h6><strong>#{link_to(featured_article.title, article_path(featured_article))}</strong></h6>
    <p> #{featured_article.text.truncate_words(30)}</p>"
    end
    output.html_safe
  end

  def show_others
    output = ''
    Article.others.each do |article|
      next unless article.image.attached?

      output << "<div class='col-3'>
        <div class='other-article'>
          #{link_to(image_tag(article.image.variant(resize_to_limit: [297, 300])), article_path(article))}
          <p>
            #{article.text.truncate_words(5)}
          </p>
          <h5 class=''>#{link_to(article.categories.pluck(:name)[0],
                                 category_path(article.categories.pluck(:id)[0]))} </h5>
        </div>
      </div>"
    end
    output.html_safe
  end
end
