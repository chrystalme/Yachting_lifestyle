require 'rails_helper'

RSpec.describe Bookmark, type: :model do
  describe 'associations' do
    it { should belong_to(:article) }
    it { should belong_to(:user) }

    describe 'validation' do
      it { should validate_presence_of(:user_id) }
      it { should validate_presence_of(:article_id) }
    end
  end
end
