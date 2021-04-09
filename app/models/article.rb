class Article < ApplicationRecord
  has_many :categories
  belongs_to :author, class_name: 'User', foreign_key: 'author_id'

  has_one_attached :image

  validates :title, presence: true, length: {maximum: 50}
  validates :text, presence: true

end
