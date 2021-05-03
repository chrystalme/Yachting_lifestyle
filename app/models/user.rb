class User < ApplicationRecord
  has_many :articles, class_name: :Article, foreign_key: :author_id
  has_many :votes
  has_many :bookmarks, foreign_key: 'user_id', dependent: :destroy
  has_many :bookmarked_articles, through: :bookmarks, source: :article

  validates :name, presence: true, length: { maximum: 40 }

  def bookmark(article)
    bookmarked_articles << article
  end

  def unbookmark(article)
    bookmarked_articles.delete(article)
  end

  def bookmarked?(article)
    bookmarked_articles.includes?(article)
  end
end
