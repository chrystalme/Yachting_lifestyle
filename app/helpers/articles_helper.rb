module ArticlesHelper
  def show_articles
    output = ''
    @articles.each do |article|
      if article.image.attached?
        output << "<li>
         <div class='card'>
       <div class='row g-0'>
            <div class='col'>
              #{link_to(image_tag(article.image.variant(resize_to_limit: [500, 600])), article_path(article))}
            </div>
            <div class='col'>
              <div class='card-body text-black'>
                <h4 class='card-title '> #{link_to(article.title, article_path(article), class: 'title')}</h4>
                <p class='card-text text-black'>
                  #{article.text.truncate_words(7)}
                </p>
                #{show_vote_btn(article)}<em class='badge bg-primary mx-3'>#{"#{article.votes.count} Vote(s)"} </em>
                <h6 class='card-text mt-2'><strong>Author: </strong>#{article.author.name} </h6>
              </div>
            </div>
      </div>
      </div>
      </li>
      "
      end      
    end
    output.html_safe
  end
end
