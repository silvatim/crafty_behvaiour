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

ActiveRecord::Schema.define(version: 20161221042334) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.string   "name_last"
    t.string   "name_first"
    t.datetime "date"
    t.integer  "tour_session_id"
    t.integer  "number_people"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.boolean  "confirmed",       default: false
  end

  create_table "breweries", force: :cascade do |t|
    t.string   "brewery_name"
    t.string   "address"
    t.float    "longitude"
    t.float    "latitude"
    t.string   "image"
    t.text     "description"
    t.string   "website"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "breweries_tours", id: false, force: :cascade do |t|
    t.integer "brewery_id"
    t.integer "tour_id"
  end

  create_table "tour_sessions", force: :cascade do |t|
    t.datetime "tour_date"
    t.integer  "tour_id"
    t.integer  "number_booked"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "tours", force: :cascade do |t|
    t.string   "tour_name"
    t.float    "price"
    t.integer  "num_capacity"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

end
