class Article < ApplicationRecord
  has_many :categories
  belongs_to :user
end
