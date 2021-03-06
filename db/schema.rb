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

ActiveRecord::Schema.define(version: 20170119223159) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "guests", force: :cascade do |t|
    t.string   "first"
    t.string   "last"
    t.string   "address"
    t.string   "phone"
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "rsvp",       default: "'Unconfirmed'"
  end

  create_table "users", force: :cascade do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.string   "oauth_token"
    t.datetime "oauth_expires_at"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "venues", force: :cascade do |t|
    t.string   "name"
    t.string   "address"
    t.string   "city"
    t.string   "state"
    t.string   "zip"
    t.string   "phone"
    t.string   "contact"
    t.string   "link"
    t.string   "img"
    t.string   "contact_name"
    t.string   "contact_email"
    t.string   "contact_phone"
    t.money    "cost",          scale: 2
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

end
