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

ActiveRecord::Schema[7.0].define(version: 2026_08_17_071815) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hitzones", force: :cascade do |t|
    t.bigint "monster_variant_id", null: false
    t.string "part_name"
    t.integer "slash"
    t.integer "blunt"
    t.integer "shot"
    t.integer "fire"
    t.integer "water"
    t.integer "thunder"
    t.integer "dragon"
    t.integer "ice"
    t.integer "stun"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_variant_id"], name: "index_hitzones_on_monster_variant_id"
  end

  create_table "monster_variants", force: :cascade do |t|
    t.bigint "monster_id", null: false
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["monster_id"], name: "index_monster_variants_on_monster_id"
  end

  create_table "monsters", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "hitzones", "monster_variants"
  add_foreign_key "monster_variants", "monsters"
end
