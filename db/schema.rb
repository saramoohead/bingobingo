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

ActiveRecord::Schema.define(version: 20180316161930) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "access_codes", force: :cascade do |t|
    t.integer  "picture_id"
    t.integer  "organisation_id"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.index ["organisation_id"], name: "index_access_codes_on_organisation_id", using: :btree
    t.index ["picture_id"], name: "index_access_codes_on_picture_id", using: :btree
  end

  create_table "organisations", force: :cascade do |t|
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.string   "name",                   null: false
    t.integer  "status",     default: 0
  end

  create_table "pictures", force: :cascade do |t|
    t.text     "name"
    t.text     "short_description"
    t.string   "square_image"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
    t.integer  "organisation_id"
    t.index ["organisation_id"], name: "index_pictures_on_organisation_id", using: :btree
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "email",                                      null: false
    t.integer  "status",                         default: 0
    t.string   "encrypted_password", limit: 128,             null: false
    t.string   "confirmation_token", limit: 128
    t.string   "remember_token",     limit: 128,             null: false
    t.integer  "organisation_id"
    t.index ["email"], name: "index_users_on_email", unique: true, using: :btree
    t.index ["organisation_id"], name: "index_users_on_organisation_id", using: :btree
    t.index ["remember_token"], name: "index_users_on_remember_token", using: :btree
  end

  add_foreign_key "access_codes", "organisations"
  add_foreign_key "access_codes", "pictures"
  add_foreign_key "pictures", "organisations"
  add_foreign_key "users", "organisations"
end
