require 'rails_helper'

RSpec.describe Category, type: :model do
  describe 'associations' do
    it {should have_many(:article_categories) }
    it {should_not belong_to(:article_categories) }
    it {should have_many(:articles) }
  end
end
