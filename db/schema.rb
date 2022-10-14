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

ActiveRecord::Schema[7.0].define(version: 2022_10_14_040627) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "venue"
    t.date "event_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "councils", force: :cascade do |t|
    t.string "role"
    t.string "responsibilities"
    t.integer "member_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "member_activities", force: :cascade do |t|
    t.integer "member_id"
    t.integer "activity_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "members", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "estate"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
  end

  create_table "resources", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.string "image_url"
    t.string "theme"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
