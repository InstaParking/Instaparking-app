# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160531031630) do

  create_table "availability_parking_places", force: :cascade do |t|
    t.integer  "day_of_week_id",   limit: 4
    t.datetime "start_date"
    t.datetime "finish_date"
    t.decimal  "hourly_rate",                precision: 10
    t.decimal  "daily_rate",                 precision: 10
    t.decimal  "weekly_rate",                precision: 10
    t.decimal  "monthly_rate",               precision: 10
    t.integer  "spaces_number",    limit: 4
    t.integer  "parking_place_id", limit: 4
    t.datetime "created_at",                                null: false
    t.datetime "updated_at",                                null: false
  end

  add_index "availability_parking_places", ["day_of_week_id"], name: "index_availability_parking_places_on_day_of_week_id", using: :btree
  add_index "availability_parking_places", ["parking_place_id"], name: "index_availability_parking_places_on_parking_place_id", using: :btree

  create_table "booking_statuses", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "booking_date"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.string   "vehicle_plate",     limit: 255
    t.decimal  "amount_payable",                precision: 10
    t.integer  "booking_status_id", limit: 4
    t.integer  "payment_type_id",   limit: 4
    t.integer  "parking_place_id",  limit: 4
    t.integer  "user_id",           limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "bookings", ["booking_status_id"], name: "index_bookings_on_booking_status_id", using: :btree
  add_index "bookings", ["parking_place_id"], name: "index_bookings_on_parking_place_id", using: :btree
  add_index "bookings", ["payment_type_id"], name: "index_bookings_on_payment_type_id", using: :btree
  add_index "bookings", ["user_id"], name: "index_bookings_on_user_id", using: :btree

  create_table "day_of_weeks", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "mnemonic",   limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "document_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id",          limit: 4
    t.integer  "parking_place_id", limit: 4
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "favorites", ["parking_place_id"], name: "index_favorites_on_parking_place_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "feedbacks", force: :cascade do |t|
    t.datetime "feedback_date"
    t.text     "comment",       limit: 65535
    t.integer  "score",         limit: 4
    t.integer  "booking_id",    limit: 4
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  add_index "feedbacks", ["booking_id"], name: "index_feedbacks_on_booking_id", using: :btree

  create_table "member_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "organization_members", force: :cascade do |t|
    t.integer  "member_type_id",  limit: 4
    t.integer  "organization_id", limit: 4
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  add_index "organization_members", ["member_type_id"], name: "index_organization_members_on_member_type_id", using: :btree
  add_index "organization_members", ["organization_id"], name: "index_organization_members_on_organization_id", using: :btree
  add_index "organization_members", ["user_id"], name: "index_organization_members_on_user_id", using: :btree

  create_table "organizations", force: :cascade do |t|
    t.string   "name",       limit: 255
    t.string   "ruc",        limit: 255
    t.string   "address",    limit: 255
    t.integer  "user_id",    limit: 4
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "organizations", ["user_id"], name: "index_organizations_on_user_id", using: :btree

  create_table "owner_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "parking_places", force: :cascade do |t|
    t.text     "description",     limit: 65535
    t.decimal  "hourly_rate",                   precision: 10
    t.decimal  "daily_rate",                    precision: 10
    t.decimal  "weekly_rate",                   precision: 10
    t.decimal  "monthly_rate",                  precision: 10
    t.integer  "spaces_number",   limit: 4
    t.string   "address",         limit: 255
    t.float    "georeference_x",  limit: 24
    t.float    "georeference_y",  limit: 24
    t.integer  "parking_type_id", limit: 4
    t.integer  "owner_type_id",   limit: 4
    t.integer  "organization_id", limit: 4
    t.integer  "user_id",         limit: 4
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "parking_places", ["organization_id"], name: "index_parking_places_on_organization_id", using: :btree
  add_index "parking_places", ["owner_type_id"], name: "index_parking_places_on_owner_type_id", using: :btree
  add_index "parking_places", ["parking_type_id"], name: "index_parking_places_on_parking_type_id", using: :btree
  add_index "parking_places", ["user_id"], name: "index_parking_places_on_user_id", using: :btree

  create_table "parking_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "payment_document_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "payment_types", force: :cascade do |t|
    t.string   "name",        limit: 255
    t.text     "description", limit: 65535
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "payments", force: :cascade do |t|
    t.datetime "payment_date"
    t.datetime "start_date"
    t.datetime "finish_date"
    t.integer  "payment_type_id",          limit: 4
    t.decimal  "amount_paid",                          precision: 10
    t.integer  "payment_document_type_id", limit: 4
    t.string   "document_number",          limit: 255
    t.integer  "booking_id",               limit: 4
    t.datetime "created_at",                                          null: false
    t.datetime "updated_at",                                          null: false
  end

  add_index "payments", ["booking_id"], name: "index_payments_on_booking_id", using: :btree
  add_index "payments", ["payment_document_type_id"], name: "index_payments_on_payment_document_type_id", using: :btree
  add_index "payments", ["payment_type_id"], name: "index_payments_on_payment_type_id", using: :btree

  create_table "profiles", force: :cascade do |t|
    t.string   "first_name",       limit: 255
    t.string   "last_name",        limit: 255
    t.integer  "document_type_id", limit: 4
    t.string   "document_number",  limit: 255
    t.datetime "born_at"
    t.integer  "user_id",          limit: 4
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  add_index "profiles", ["document_type_id"], name: "index_profiles_on_document_type_id", using: :btree
  add_index "profiles", ["user_id"], name: "index_profiles_on_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at",                                      null: false
    t.datetime "updated_at",                                      null: false
    t.integer  "role",                   limit: 4
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  add_foreign_key "availability_parking_places", "day_of_weeks"
  add_foreign_key "availability_parking_places", "parking_places"
  add_foreign_key "bookings", "booking_statuses"
  add_foreign_key "bookings", "parking_places"
  add_foreign_key "bookings", "payment_types"
  add_foreign_key "bookings", "users"
  add_foreign_key "favorites", "parking_places"
  add_foreign_key "favorites", "users"
  add_foreign_key "feedbacks", "bookings"
  add_foreign_key "organization_members", "member_types"
  add_foreign_key "organization_members", "organizations"
  add_foreign_key "organization_members", "users"
  add_foreign_key "organizations", "users"
  add_foreign_key "parking_places", "organizations"
  add_foreign_key "parking_places", "owner_types"
  add_foreign_key "parking_places", "parking_types"
  add_foreign_key "parking_places", "users"
  add_foreign_key "payments", "bookings"
  add_foreign_key "payments", "payment_document_types"
  add_foreign_key "payments", "payment_types"
  add_foreign_key "profiles", "document_types"
  add_foreign_key "profiles", "users"
end
