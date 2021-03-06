# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_27_195748) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bugs", force: :cascade do |t|
    t.string "name"
    t.string "time"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "location"
  end

  create_table "bugs_months", id: false, force: :cascade do |t|
    t.bigint "month_id", null: false
    t.bigint "bug_id", null: false
  end

  create_table "bugs_northern_months", id: false, force: :cascade do |t|
    t.bigint "northern_month_id", null: false
    t.bigint "bug_id", null: false
  end

  create_table "bugs_southern_months", id: false, force: :cascade do |t|
    t.bigint "southern_month_id", null: false
    t.bigint "bug_id", null: false
  end

  create_table "fish", force: :cascade do |t|
    t.string "name"
    t.string "time"
    t.integer "value"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "shadow_size"
    t.string "location"
  end

  create_table "fish_months", id: false, force: :cascade do |t|
    t.bigint "month_id", null: false
    t.bigint "fish_id", null: false
  end

  create_table "fish_northern_months", id: false, force: :cascade do |t|
    t.bigint "northern_month_id", null: false
    t.bigint "fish_id", null: false
  end

  create_table "fish_southern_months", id: false, force: :cascade do |t|
    t.bigint "southern_month_id", null: false
    t.bigint "fish_id", null: false
  end

  create_table "northern_months", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "southern_months", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
