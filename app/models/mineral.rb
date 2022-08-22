# frozen_string_literal: true

# == Schema Information
#
# Table name: minerals
#
#  id         :bigint           not null, primary key
#  name       :text             not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_minerals_on_name  (name) UNIQUE
#
class Mineral < ApplicationRecord
  validates :name, presence: true, uniqueness: true

  scope :ordered, -> { order(name: :asc) }
end
