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

ActiveRecord::Schema.define(version: 2020_06_10_035058) do

  create_table "catalog_tags", force: :cascade do |t|
    t.integer "hair_catalog_id"
    t.integer "tag_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "color_types", force: :cascade do |t|
    t.string "color_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "colors", force: :cascade do |t|
    t.integer "hairdresser_id"
    t.integer "color_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cut_types", force: :cascade do |t|
    t.string "cut_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cuts", force: :cascade do |t|
    t.integer "hairdresser_id"
    t.integer "cut_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "model_id"
    t.integer "hair_catalog_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hair_catalogs", force: :cascade do |t|
    t.integer "hairdresser_id"
    t.string "catalog_image_id"
    t.text "treatment_contents"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "hairdressers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "hairdresser_name"
    t.string "hairdresser_image_id"
    t.integer "hairdresser_gender"
    t.string "salon_name"
    t.string "postal_code"
    t.string "salon_address"
    t.integer "area"
    t.text "hairdresser_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_hairdressers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_hairdressers_on_reset_password_token", unique: true
  end

  create_table "models", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.string "hairmodel_name"
    t.string "hairmodel_image_id"
    t.integer "hairmodel_gender"
    t.integer "age"
    t.integer "hair_length"
    t.integer "black_history"
    t.integer "bleach_history"
    t.integer "straight_history"
    t.text "hairmodel_comment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_models_on_email", unique: true
    t.index ["reset_password_token"], name: "index_models_on_reset_password_token", unique: true
  end

  create_table "perm_types", force: :cascade do |t|
    t.string "perm_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "perms", force: :cascade do |t|
    t.integer "hairdresser_id"
    t.integer "perm_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_hairs", force: :cascade do |t|
    t.integer "hairdresser_id"
    t.integer "set_type_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "set_types", force: :cascade do |t|
    t.string "set_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string "tag_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
