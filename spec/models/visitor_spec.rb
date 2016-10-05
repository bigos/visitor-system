require 'rails_helper'

RSpec.describe Visitor, type: :model do
  describe 'validation' do
    it 'has valid factory' do
      expect(build(:visitor)).to be_valid
    end

    describe 'requires presence of' do
      it 'name' do
        v = build :visitor, name: nil
        expect(v).not_to be_valid
      end

      it 'arrival time' do
        v = build :visitor, arrived_at: nil
        expect(v).not_to be_valid
      end

      it 'status' do
        v = build :visitor, status: nil
        expect(v).not_to be_valid
      end
    end
  end
end
