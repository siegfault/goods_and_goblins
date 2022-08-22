# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Event, type: :model do
  let(:event) { described_class.new }

  describe 'relationships' do
    it do
      expect(event).to belong_to(:event_type)
    end

    it do
      expect(event).to have_many(:mines)
    end
  end

  describe 'validations' do
    describe '#started_on' do
      it do
        expect(event).to validate_presence_of(:started_on)
      end

      it 'allows a date' do
        expect(described_class.new).to allow_value('2020-02-02').for(:started_on)
      end
    end

    describe '#ended_on' do
      let(:started_on) { '2020-02-02' }
      let(:event) { build(:event, started_on:) }

      it do
        expect(event).to validate_presence_of(:ended_on)
      end

      it 'allows ended_on to equal started_on' do
        expect(event).to allow_value(started_on).for(:ended_on)
      end

      it 'requires ended_on to be after started_on' do
        expect(event).not_to allow_value('2020-02-01').for(:ended_on)
      end
    end
  end
end
