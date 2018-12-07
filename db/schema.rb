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

ActiveRecord::Schema.define(version: 2018_12_06_132249) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

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
    t.bigint "discipline_id"
    t.boolean "draft", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["discipline_id"], name: "index_cards_on_discipline_id"
    t.index ["professional_id"], name: "index_cards_on_professional_id"
  end

  create_table "cards_disciplines", force: :cascade do |t|
    t.bigint "card_id"
    t.bigint "discipline_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_cards_disciplines_on_card_id"
    t.index ["discipline_id"], name: "index_cards_disciplines_on_discipline_id"
  end

  create_table "cards_languages", force: :cascade do |t|
    t.bigint "card_id"
    t.bigint "spoken_language_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_cards_languages_on_card_id"
    t.index ["spoken_language_id"], name: "index_cards_languages_on_spoken_language_id"
  end

  create_table "disciplines", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "evaluations", force: :cascade do |t|
    t.text "comment"
    t.integer "eval"
    t.bigint "card_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["card_id"], name: "index_evaluations_on_card_id"
    t.index ["user_id"], name: "index_evaluations_on_user_id"
  end

  create_table "professionals", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_professionals_on_email", unique: true
    t.index ["reset_password_token"], name: "index_professionals_on_reset_password_token", unique: true
  end

  create_table "spoken_languages", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name", default: "", null: false
    t.string "last_name", default: "", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
