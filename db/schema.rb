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

ActiveRecord::Schema.define(version: 2022_10_23_104623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "agencies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["name"], name: "index_agencies_on_name", unique: true
  end

  create_table "agents", force: :cascade do |t|
    t.string "name"
    t.boolean "premium"
    t.boolean "seller_favorite"
    t.boolean "registered"
    t.date "registered_on"
    t.date "unregistered_on"
    t.integer "profile_pageviews"
    t.integer "overall_rating"
    t.integer "review_count"
    t.integer "recommendation_count"
    t.string "image"
    t.string "url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.bigint "agencies_id"
    t.index ["agencies_id"], name: "index_agents_on_agencies_id"
  end

  add_foreign_key "agents", "agencies", column: "agencies_id"
end
