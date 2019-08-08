# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2019_08_06_160231) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "affected_body_parts", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "body_part_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_part_id"], name: "index_affected_body_parts_on_body_part_id"
    t.index ["user_id"], name: "index_affected_body_parts_on_user_id"
  end

  create_table "body_parts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "measurements", force: :cascade do |t|
    t.bigint "measuring_point_id"
    t.bigint "affected_body_part_id"
    t.date "measured_at"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["affected_body_part_id"], name: "index_measurements_on_affected_body_part_id"
    t.index ["measuring_point_id"], name: "index_measurements_on_measuring_point_id"
  end

  create_table "measuring_point_values", force: :cascade do |t|
    t.bigint "measuring_point_id"
    t.bigint "affected_body_part_id"
    t.decimal "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["affected_body_part_id"], name: "index_measuring_point_values_on_affected_body_part_id"
    t.index ["measuring_point_id"], name: "index_measuring_point_values_on_measuring_point_id"
  end

  create_table "measuring_points", force: :cascade do |t|
    t.bigint "body_part_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["body_part_id"], name: "index_measuring_points_on_body_part_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "affected_body_parts", "body_parts"
  add_foreign_key "affected_body_parts", "users"
  add_foreign_key "measurements", "affected_body_parts"
  add_foreign_key "measurements", "measuring_points"
  add_foreign_key "measuring_point_values", "affected_body_parts"
  add_foreign_key "measuring_point_values", "measuring_points"
  add_foreign_key "measuring_points", "body_parts"
end
