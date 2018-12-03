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

ActiveRecord::Schema.define(version: 2018_12_03_153120) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cards", force: :cascade do |t|
    t.string "activity_title"
    t.string "short_description"
    t.text "long_description"
    t.integer "organization"
    t.string "address"
    t.integer "city"
    t.integer "country", default: 0
    t.decimal "latitude"
    t.decimal "longitude"
    t.string "price"
    t.time "length"
    t.time "opening_hour"
    t.time "closing_hour"
    t.string "whatsapp"
    t.string "website"
    t.string "facebook"
    t.string "instagram"
    t.boolean "status", default: false
    t.bigint "professional_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["professional_id"], name: "index_cards_on_professional_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "spoken_languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
