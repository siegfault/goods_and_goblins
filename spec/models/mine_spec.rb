# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Mine do
  let(:mine) { described_class.new }

  describe 'relationships' do
    it do
      expect(mine).to belong_to(:mineral)
    end

    it do
      expect(mine).to belong_to(:event)
    end
  end

  describe 'validations' do
    it do
      expect(mine).to validate_inclusion_of(:column).in_array(%w[left middle right])
    end

    it do
      pending 'this fails, specifying that -1 is a valid value, though a specific test for that correctly disallows -1'

      expect(mine).to validate_numericality_of(:position).is_greater_than_or_equal_to(0)
    end

    it do
      pending 'this fails, specifying that -1 is a valid value, though a specific test for that correctly disallows -1'

      expect(mine).to validate_numericality_of(:section).is_greater_than_or_equal_to(0)
    end

    it do
      expect(mine).to validate_inclusion_of(:scale).in_array(%w[10 20 30 40 50])
    end
  end
end
