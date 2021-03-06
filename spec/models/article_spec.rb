require 'rails_helper'

RSpec.describe Article, type: :model do
  describe 'associations' do
    it { should have_many(:article_categories) }
    it { should have_many(:categories) }
    it { should belong_to(:author) }
    it { should have_many(:votes) }
    it { should have_many(:bookmarks) }
    it { should have_many(:bookmarked_readers).through(:bookmarks) }
    it { should have_one_attached(:image) }
  end

  describe 'validations' do
    it { should validate_presence_of(:title) }
    it { should validate_presence_of(:text) }
    it { should validate_presence_of(:image) }
    it { should validate_length_of(:title).is_at_most(50).is_at_least(5) }
    it { should validate_length_of(:text).is_at_least(30) }
  end
end
