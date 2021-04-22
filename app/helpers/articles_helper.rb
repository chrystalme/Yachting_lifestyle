module ArticlesHelper
  def show_articles
    output = ''
    @articles.each do |article|
      next unless article.image.attached?

      output << "<li>
        <div class='card'>
          <div class='row g-0'>
                <div class='col'>
                  #{link_to(cl_image_tag(article.image.key, width: 300, crop: :scale), article_path(article))}
                </div>
                  <div class='col'>
                        <div class='card-body text-black'>
                          <h4 class='card-title '> #{link_to(article.title.truncate_words(5), article_path(article), class: 'title')}</h4>
                          <p class='card-text text-black'>
                            #{article.text.truncate_words(7)}
                          </p>
                        <span>
                          #{show_vote_btn(article)}
                          #{show_bookmark_btn(article)}<span>
                          <h6 class='card-text mt-2'><strong>Author: </strong>#{article.author.name} </h6>
                        </div>
                  </div>
              </div>
            </div>
          </li>"
    end
    output.html_safe
  end

  def show_prev_articles
    output = ''
    if @my_articles.present?
      @my_articles.each do |my_article|
        output << "<p>
        #{my_article.title}
      </p>"
      end
    else
      output << '<p>
        You have no articles yet.
      </p>'
    end
    output.html_safe
  end

  def show_bookmarked_articles
    output = ''
    if @bookmarked_articles.present?
      @bookmarked_articles.each do |my_bookmark|
        output << "<p>
        #{link_to(my_bookmark.title, article_path(my_bookmark))}
      </p>"
      end
    else
      output << '<p>
        You have not bookmarked any article yet.
      </p>'
    end
    output.html_safe
  end
end
