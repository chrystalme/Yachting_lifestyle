class Article < ApplicationRecord
  has_many :article_categories, dependent: :destroy
  has_many :categories, through: :article_categories
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'
  has_many :votes, dependent: :destroy
  has_many :voters, through: :votes
  has_one_attached :image

  validates :title, presence: true, length: { maximum: 50 }
  validates :text, presence: true
  validates :image, presence: true

  scope :ordered_by_most_recent, -> { order(created_at: :desc) }

  scope :featured, -> { Article.find(Vote.group(:article_id).count.max_by { |_k, v| v }[0]) }

  scope :category, ->(name) { Article.joins(:categories).where(categories: { name: name }) }

  scope :others, -> { Article.where.not('id = ?', Vote.group(:article_id).count.max_by { |_k, v| v }[0]).limit(4) }
end
