require 'rails_helper'

Rspec.describe User, type: :model do
  describe 'associations' do
    it { shoud have_many(:articles) }
    it { shoud have_many(:votes) }
  end
end