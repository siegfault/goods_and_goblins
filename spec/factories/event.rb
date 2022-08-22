# frozen_string_literal: true

FactoryBot.define do
  factory :event do
    started_on { Date.yesterday }
    ended_on { Date.tomorrow }
    event_type
  end
end
