class Vote < ApplicationRecord
  belongs_to :user
  belongs_to :article

  validates :user_id, presence: true
  validates :article_id, presence: true
  validates :article_id, uniqueness: { scope: :user_id }
end
