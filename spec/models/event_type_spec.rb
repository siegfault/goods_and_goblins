# frozen_string_literal: true

require 'rails_helper'

RSpec.describe EventType, type: :model do
  let(:event_type) { build(:event_type) }

  describe 'relationships' do
    it do
      expect(event_type).to have_many(:events)
    end
  end

  describe 'validations' do
    it do
      expect(event_type).to validate_uniqueness_of(:name)
    end

    it do
      expect(event_type).to validate_presence_of(:name)
    end
  end

  describe 'scopes' do
    describe '.ordered' do
      it do
        expect(described_class.ordered.to_sql).to eq(described_class.order(name: :asc).to_sql)
      end
    end
  end
end
