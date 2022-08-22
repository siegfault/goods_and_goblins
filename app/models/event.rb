# frozen_string_literal: true

# == Schema Information
#
# Table name: events
#
#  id            :bigint           not null, primary key
#  ended_on      :date             not null
#  started_on    :date             not null
#  created_at    :datetime         not null
#  updated_at    :datetime         not null
#  event_type_id :bigint           not null
#
# Indexes
#
#  index_events_on_event_type_id  (event_type_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_type_id => event_types.id)
#
class Event < ApplicationRecord
  belongs_to :event_type
  has_many :mines, dependent: :destroy

  validates :started_on, presence: true
  validates :ended_on, presence: true, comparison: { greater_than_or_equal_to: :started_on }
end
