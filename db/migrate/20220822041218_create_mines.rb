# frozen_string_literal: true

class CreateMines < ActiveRecord::Migration[7.1]
  def change
    create_table :mines do |t|
      t.references :mineral, null: false, foreign_key: true
      t.references :event, null: false, foreign_key: true
      t.integer :section
      t.integer :position
      t.integer :scale, null: false
      t.text :column, null: false

      t.timestamps
    end
  end
end
