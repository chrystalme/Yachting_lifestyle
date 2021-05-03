class Category < ApplicationRecord
  has_many :article_categories, dependent: :destroy
  has_many :articles

  enum priority: %i[high medium low]
end
