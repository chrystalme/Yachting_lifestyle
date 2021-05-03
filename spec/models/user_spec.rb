require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'associations' do
    it { should have_many(:articles) }
    it { should have_many(:votes) }
    it { should have_many(:bookmarks) }
    it { should have_many(:bookmarked_articles).through(:bookmarks) }
  end
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_length_of(:name).is_at_most(40) }
  end
end
