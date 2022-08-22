# frozen_string_literal: true

# == Schema Information
#
# Table name: mines
#
#  id         :bigint           not null, primary key
#  column     :text             not null
#  position   :integer
#  scale      :integer          not null
#  section    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  event_id   :bigint           not null
#  mineral_id :bigint           not null
#
# Indexes
#
#  index_mines_on_event_id    (event_id)
#  index_mines_on_mineral_id  (mineral_id)
#
# Foreign Keys
#
#  fk_rails_...  (event_id => events.id)
#  fk_rails_...  (mineral_id => minerals.id)
#
class Mine < ApplicationRecord
  belongs_to :mineral
  belongs_to :event

  validates :section, :position, numericality: { greather_than_or_equal_to: 0 }, allow_nil: true
  validates :scale, numericality: true, inclusion: { in: [10, 20, 30, 40, 50] }
  validates :column, inclusion: { in: %w[left middle right] }
end
