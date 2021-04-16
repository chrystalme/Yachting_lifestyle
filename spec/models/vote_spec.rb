require 'rails_helper'

RSpec.describe Vote, type: :model do
  describe 'associations' do
    it { should belong_to(:article) }
    it { should belong_to(:user) }
  end

  describe 'validations' do
    it { should validate_presence_of(:article_id) }
    it { should validate_presence_of(:user_id) }
    xit { should validate_uniqueness_of(:article_id).scoped_to(:user_id) }
  end
end
