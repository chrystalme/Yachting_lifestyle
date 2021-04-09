class User < ApplicationRecord
  has_many :articles, class_name: :Article, foreign_key: :author_id
  has_many :votes#, through: : articles

  validates :name, presence: true, length: { maximum: 40 }
end
