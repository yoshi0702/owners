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

ActiveRecord::Schema.define(version: 2020_05_17_103633) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "areas", force: :cascade do |t|
    t.string "prefecture_name", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "buy_points", force: :cascade do |t|
    t.integer "supporter_id", null: false
    t.string "purchase_point", null: false
    t.string "purchase_confirmation_date", null: false
    t.string "payment_confirmation_date", null: false
    t.boolean "deposit_status", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer "supporter_id", null: false
    t.integer "project_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "owners", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "project_id"
    t.string "surname"
    t.string "name", null: false
    t.string "kana_surname", null: false
    t.string "kana_name", null: false
    t.string "company_name", null: false
    t.string "kana_company_name", null: false
    t.string "profire_image_id"
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.string "bank_name", null: false
    t.string "branch_name", null: false
    t.string "account_type", null: false
    t.string "account_number", null: false
    t.string "account_holder", null: false
    t.boolean "account_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_owners_on_email", unique: true
    t.index ["reset_password_token"], name: "index_owners_on_reset_password_token", unique: true
  end

  create_table "point_histories", force: :cascade do |t|
    t.integer "supporter_id", null: false
    t.integer "project_id", null: false
    t.string "point", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "projects", force: :cascade do |t|
    t.integer "owner_id", null: false
    t.string "number_of_supporters", null: false
    t.string "project_title", null: false
    t.string "summary_sentence", null: false
    t.string "advertising_image_id"
    t.text "text", null: false
    t.boolean "publication_status", null: false
    t.string "post_period", null: false
    t.string "target_amount", null: false
    t.string "total_support", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "area_id"
  end

  create_table "supporters", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "project_id"
    t.string "surname", null: false
    t.string "name", null: false
    t.string "kana_surname", null: false
    t.string "kana_name", null: false
    t.string "profire_image_id"
    t.string "postal_code", null: false
    t.string "address", null: false
    t.string "phone_number", null: false
    t.string "owned_points"
    t.boolean "account_status", default: true, null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_supporters_on_email", unique: true
    t.index ["reset_password_token"], name: "index_supporters_on_reset_password_token", unique: true
  end

end
