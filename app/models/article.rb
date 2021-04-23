class Article < ApplicationRecord
  has_many :article_categories, dependent: :destroy
  belongs_to :category
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes, source: :user
  has_one_attached :image

  has_many :bookmarks, foreign_key: 'article_id', dependent: :destroy
  has_many :bookmarked_readers, through: :bookmarks, source: :user

  validates :title, presence: true, length: { in: 5..50 }
  validates :text, presence: true, length: { minimum: 30 }
  validates :image, presence: true

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  scope :featured, -> { Article.joins(:votes).group(:id).count.max_by { |_k, v| v } }

  scope :category, ->(name) { Article.joins(:categories).where(categories: { name: name }) }

  scope :others, -> { Article.all.where.not('id = ?', Article.joins(:votes).group(:id).count.max_by { |_k, v| v }[0]).limit(4) }

  scope :user_bookmarks, lambda { |current_user|
                           includes(:author).joins(:bookmarks)
                             .where(' user_id = ?', current_user.id.to_s)
                         }
end
