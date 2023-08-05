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

ActiveRecord::Schema[7.0].define(version: 2023_08_05_170756) do
  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.integer "coordinate_x"
    t.integer "coordinate_y"
    t.integer "coordinate_z"
    t.integer "discoverer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discoverer_id"], name: "index_planets_on_discoverer_id"
  end

  create_table "players", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualities", force: :cascade do |t|
    t.string "category"
    t.string "name"
    t.integer "player_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["player_id"], name: "index_qualities_on_player_id"
  end

  create_table "ships", force: :cascade do |t|
    t.string "name", null: false
    t.string "description", null: false
    t.integer "sensors"
    t.integer "firepower"
    t.integer "durability"
    t.integer "accomodation"
    t.integer "speed"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "player_id", null: false
    t.index ["name"], name: "index_ships_on_name"
    t.index ["player_id"], name: "index_ships_on_player_id"
  end

  create_table "towns", force: :cascade do |t|
    t.string "name"
    t.integer "planet_id", null: false
    t.integer "discoverer_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discoverer_id"], name: "index_towns_on_discoverer_id"
    t.index ["planet_id"], name: "index_towns_on_planet_id"
  end

  add_foreign_key "planets", "players", column: "discoverer_id"
  add_foreign_key "qualities", "players"
  add_foreign_key "ships", "players"
  add_foreign_key "towns", "planets"
  add_foreign_key "towns", "players", column: "discoverer_id"
end
