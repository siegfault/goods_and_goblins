# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mineral, type: :model do
  describe 'validations' do
    it do
      expect(described_class.new).to validate_presence_of(:name)
    end

    it do
      expect(described_class.new).to validate_uniqueness_of(:name)
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
