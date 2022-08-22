# frozen_string_literal: true

class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.references :event_type, null: false, foreign_key: true
      t.date :started_on, null: false
      t.date :ended_on, null: false

      t.timestamps
    end
  end
end
