# frozen_string_literal: true

class CreateMinerals < ActiveRecord::Migration[7.1]
  def change
    create_table :minerals do |t|
      t.text :name, null: false

      t.timestamps
    end

    add_index :minerals, :name, unique: true
  end
end
