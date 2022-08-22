# frozen_string_literal: true

# == Schema Information
#
# Table name: event_types
#
#  id         :bigint           not null, primary key
#  name       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_event_types_on_name  (name) UNIQUE
#
class EventType < ApplicationRecord
  has_many :events, dependent: :destroy

  validates :name, presence: true, uniqueness: true

  scope :ordered, -> { order(name: :asc) }
end
