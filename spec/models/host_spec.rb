require 'rails_helper'

RSpec.describe Host, type: :model do
  describe 'validation' do
    it 'has a valid factory' do
      u = create :user
      expect(build(:host, user_id: u.id)).to be_valid
    end
    describe 'requires presence of' do
      it 'name' do
        h = build :host, name: nil
        expect(h).not_to be_valid
      end
      it 'location' do
        h = build :host, location: nil
        expect(h).not_to be_valid
      end
    end
  end
end
