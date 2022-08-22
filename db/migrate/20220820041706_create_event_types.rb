# frozen_string_literal: true

class CreateEventTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :event_types do |t|
      t.text :name, null: false

      t.timestamps
    end

    add_index :event_types, :name, unique: true
  end
end
