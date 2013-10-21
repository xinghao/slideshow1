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

ActiveRecord::Schema.define(version: 20131021120234) do

  create_table "bookings", force: true do |t|
    t.string   "first_name"
    t.string   "surname"
    t.string   "place_of_origin"
    t.string   "email"
    t.boolean  "accept_call"
    t.string   "phone"
    t.string   "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "enquires", force: true do |t|
    t.string   "first_name"
    t.string   "email"
    t.text     "message"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "iso_countries", force: true do |t|
    t.string   "iso_name"
    t.string   "iso"
    t.string   "iso3"
    t.string   "name"
    t.integer  "numcode"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
