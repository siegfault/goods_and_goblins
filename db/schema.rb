# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2022_08_22_041218) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "event_types", force: :cascade do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_event_types_on_name", unique: true
  end

  create_table "events", force: :cascade do |t|
    t.bigint "event_type_id", null: false
    t.date "started_on", null: false
    t.date "ended_on", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_type_id"], name: "index_events_on_event_type_id"
  end

  create_table "minerals", force: :cascade do |t|
    t.text "name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name"], name: "index_minerals_on_name", unique: true
  end

  create_table "mines", force: :cascade do |t|
    t.bigint "mineral_id", null: false
    t.bigint "event_id", null: false
    t.integer "section"
    t.integer "position"
    t.integer "scale", null: false
    t.text "column", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["event_id"], name: "index_mines_on_event_id"
    t.index ["mineral_id"], name: "index_mines_on_mineral_id"
  end

  add_foreign_key "events", "event_types"
  add_foreign_key "mines", "events"
  add_foreign_key "mines", "minerals"
end
